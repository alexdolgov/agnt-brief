// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SignedSafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

import "./interfaces/IBondAVAX.sol";
import "./interfaces/ICertAVAX.sol";

contract FutureCertAVAX is OwnableUpgradeable, ERC20Upgradeable, ICertAVAX {

    using SafeMathUpgradeable for uint256;
    using MathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;

    address public _pool;
    address public _bondToken;

    modifier onlyMinter() {
        require(
           msg.sender == _pool ||
           msg.sender == _bondToken,
           "onlyMinter: not allowed"
        );
        _;
    }

    function initialize(address avalanchePool, address bondToken) public initializer {
        __Ownable_init();
        __ERC20_init_unchained("Ankr Avalanche Reward Bearing Certificate", "aAVAXc");
        _pool = avalanchePool;
        _bondToken = bondToken;
        uint256 initSupply = IBondAVAX(bondToken).totalSharesSupply();
        // mint init supply if not inizialized
        super._mint(address(bondToken), initSupply);
    }

    function bondTransferTo(address account, uint256 amount) external override onlyMinter {
        super._transfer(address(_bondToken), account, amount);
    }

    function bondTransferFrom(address account, uint256 amount) external override onlyMinter {
        super._transfer(account, address(_bondToken), amount);
    }

    function ratio() public view override returns (uint256) {
        return IBondAVAX(_bondToken).ratio();
    }

    function burn(address account, uint256 amount) external override onlyMinter {
        _burn(account, amount);
    }

    function mint(address account, uint256 amount) external override onlyMinter {
        _mint(account, amount);
    }

    function changePoolContract(address newPool) external override onlyOwner {
        address oldPool = _pool;
        _pool = newPool;
        emit PoolContractChanged(oldPool, newPool);
    }

    function changeBondToken(address newBondToken) external override onlyOwner {
        address oldBondToken = _bondToken;
        _bondToken = newBondToken;
        emit BondTokenChanged(oldBondToken, newBondToken);
    }

    function balanceWithRewardsOf(address account) public view override returns (uint256) {
        uint256 shares = this.balanceOf(account);
        return IBondAVAX(_bondToken).sharesToBalance(shares);
    }

    function isRebasing() public pure override returns (bool) {
        return false;
    }
}
