// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/DamnValuableToken.sol";
import "src/unstoppable/UnstoppableLender.sol";

contract POC is Test {
    DamnValuableToken token;
    UnstoppableLender lender;
}
