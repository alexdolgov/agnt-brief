// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SpSei is ERC20 {
    // token precision is 18
    uint8 private constant DECIMALS = 18;

    // token symbol
    string private constant SYMBOL = "spSEI";

    // token name
    string private constant NAME = "Splashing SEI";

    // staking contract address
    address public stakingContract;

    constructor(address _stakingContract) ERC20(NAME, SYMBOL) {
        // no need to mint token, because spSEI is obtained by staking SEI
        stakingContract = _stakingContract;
    }

    // get token precision
    function decimals() public pure override returns (uint8) {
        return DECIMALS;
    }

    // mint spSEI (only staking contract can call)
    function mint(address to, uint256 amount) external {
        require(
            msg.sender == stakingContract,
            "Only staking contract can mint"
        );
        _mint(to, amount);
    }

    // burn spSEI (only staking contract can call)
    function burn(address from, uint256 amount) external {
        require(
            msg.sender == stakingContract,
            "Only staking contract can burn"
        );
        _burn(from, amount);
    }

    // this function is reserved for future upgrade, currently not open to staking
    function setStakingContract(address _newStakingContract) external {
        require(
            msg.sender == stakingContract,
            "Only current staking contract can change"
        );
        stakingContract = _newStakingContract;
    }
}
