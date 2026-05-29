// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {AuraCompounderVault} from "src/compounder/vaults/AuraCompounderVault.sol";
import {auraBALSwapper} from "src/swappers/auraBALSwapper.sol";
import {AuraCompounderStrategy} from "src/compounder/strategies/AuraCompounderStrategy.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {AuraBaseCompounderVault} from "src/compounder/vaults/AuraBaseCompounderVault.sol";
import {AuraVirtualVault} from "src/compounder/vaults/AuraVirtualVault.sol";
import {AuraRouter} from "src/compounder/AuraRouter.sol";
import {AuraCompounderVault} from "src/compounder/vaults/AuraCompounderVault.sol";
import {OwnableUpgradeable} from "openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IAuraLocker} from "src/interfaces/IAuraLocker.sol";
import {Errors} from "src/errors/Errors.sol";

contract Viewer is OwnableUpgradeable {
    using Math for uint256;

    AuraVirtualVault public virtualVault;
    AuraRouter public router;
    AuraCompounderVault public vault;
    AuraCompounderStrategy public strategy;

    address private constant gov = 0x2a88a454A7b0C29d36D5A121b7Cf582db01bfCEC;

    function initialize(address _router, address _vault, address _virtualVault, address _strategy)
        external
        initializer
    {
        if (msg.sender != gov) {
            revert Errors.notOwner();
        }

        __Ownable_init();

        virtualVault = AuraVirtualVault(_virtualVault);
        router = AuraRouter(_router);
        vault = AuraCompounderVault(_vault);
        strategy = AuraCompounderStrategy(payable(_strategy));
    }

    function setVirtualVault(address _virtualVault) external onlyOwner {
        virtualVault = AuraVirtualVault(_virtualVault);
    }

    function setAuraRouter(address _router) external onlyOwner {
        router = AuraRouter(_router);
    }

    function setAuraCompounderVault(address _vault) external onlyOwner {
        vault = AuraCompounderVault(_vault);
    }

    function setAuraCompounderStrategy(address _strategy) external onlyOwner {
        strategy = AuraCompounderStrategy(payable(_strategy));
    }

    function getUserData(address _user, bool _tokenized) public view returns (uint128, uint64, uint64) {
        return _tokenized ? router.lsdUserInfo(_user) : router.noTokenizedUserInfo(_user);
    }

    function getVirtualShares(address _user) public view returns (uint256) {
        return virtualVault.virtualShares(_user);
    }

    function getVirtualSharesToAssets(uint256 _shares) public view returns (uint256) {
        return virtualVault.previewRedeem(_shares);
    }

    function getSharesToAssets(uint256 _jAura) public view returns (uint256) {
        return vault.previewRedeem(_jAura);
    }

    function getPreviewDeposit(uint256 _assets, bool _tokenized) public view returns (uint256) {
        uint256 shares;
        if (_tokenized) {
            shares = vault.previewDeposit(_assets);
        } else {
            shares = virtualVault.previewDeposit(_assets);
        }
        return shares;
    }

    // Includes withdraw retention
    function getAuraRedemption(uint256 _shares, bool _tokenized) public view returns (uint256, uint256) {
        uint256 assets;
        uint256 withdrawalRetention;
        if (_tokenized) {
            assets = vault.previewRedeem(_shares);
        } else {
            assets = virtualVault.previewRedeem(_shares);
        }
        (address recipient, uint64 percentage) = strategy.withdrawRetention();
        if (percentage > 0 && recipient != address(0)) {
            withdrawalRetention = (assets * percentage) / getStrategyDenominator();
        }
        return (assets - withdrawalRetention, withdrawalRetention);
    }

    // Does not include withdraw retention
    function getRatio(bool _tokenized) public view returns (uint256) {
        uint256 shares = 1e18;

        if (_tokenized) {
            return getSharesToAssets(shares);
        }

        return getVirtualSharesToAssets(shares);
    }

    function getRehypothecateSimulation(uint256 _assets) public view returns (uint256, uint256) {
        uint256 shares = vault.previewDeposit(_assets);

        uint256 retention = shares.mulDiv(vault.rehypothecateIncentive(), 1e12, Math.Rounding.Down);

        return (shares - retention, retention);
    }

    function getLSDTotalAssets() public view returns (uint256) {
        return vault.totalAssets();
    }

    function getNoTokenizedTotalAssets() public view returns (uint256) {
        return virtualVault.totalAssets();
    }

    function getWithdrawalRequests() public view returns (uint256, uint256, uint256) {
        return (
            router.totalWithdrawRequests(), router.totalWithdrawRequestsLSD(), router.totalWithdrawRequestsNoTokenized()
        );
    }

    function getMinDepositPeriod() public view returns (uint256) {
        return router.MIN_DEPOSIT_PERIOD();
    }

    function getMinWithdrawPeriod() public view returns (uint256) {
        return router.MIN_WITHDRAW_PERIOD();
    }

    function getRetentionWithdraw() public view returns (uint256) {
        (, uint64 percentage) = strategy.withdrawRetention();
        return uint256(percentage);
    }

    function getStrategyDenominator() public pure returns (uint256) {
        return 10000;
    }
}
