// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/DamnValuableToken.sol";
import "src/unstoppable/UnstoppableLender.sol";
import "src/unstoppable/ReceiverUnstoppable.sol";

contract POC is Test {
    uint256 constant TOKENS_IN_POOL = 1000000 ether;
    uint256 constant INITIAL_ATTACKER_TOKEN_BALANCE = 100 ether;

    DamnValuableToken token;
    UnstoppableLender pool;
    ReceiverUnstoppable receiverContract;
    address attacker;

    function setUp() public {
        attacker = makeAddr("attacker");

        token = new DamnValuableToken();
        pool = new UnstoppableLender(address(token));

        token.approve(address(pool), TOKENS_IN_POOL);
        pool.depositTokens(TOKENS_IN_POOL);

        token.transfer(address(attacker), INITIAL_ATTACKER_TOKEN_BALANCE);

        require(token.balanceOf(address(pool)) == TOKENS_IN_POOL);
        require(
            token.balanceOf(address(attacker)) == INITIAL_ATTACKER_TOKEN_BALANCE
        );

        receiverContract = new ReceiverUnstoppable(address(pool));
        receiverContract.executeFlashLoan(10);
    }

    function test() public {}
}
