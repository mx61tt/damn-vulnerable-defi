# Damn Vulnerable DeFi

Damn Vulnerable DeFi using Foundry instead Hardhat.

Levels.

- [ ] Lvl 1 Unstoppable
- [ ] Lvl 2 Naive receiver
- [ ] Lvl 3 Truster
- [ ] Lvl 4 Side entrance
- [ ] Lvl 5 The rewarder
- [ ] Lvl 6 Selfie
- [ ] Lvl 7 Compromised
- [ ] Lvl 8 Puppet
- [ ] Lvl 9 Puppet v2
- [ ] Lvl 10 Free rider
- [ ] Lvl 11 Backdoor
- [ ] Lvl 12 Climber
- [ ] Lvl 13 Safe miners 


### How To

After cloning the repository, just make sure to insert the logic of the exploitation inside of the `test()` function. To run, use the command below as an example.

```bash
forge test --match-path ./test/Unstoppable.t.sol -vvvv
```

### Credits

Adapted by [@mx61tt](https://github.com/mx61tt)

Original repo [here](https://github.com/tinchoabbate/damn-vulnerable-defi/tree/v2.2.0)

