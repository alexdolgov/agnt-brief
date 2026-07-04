// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IVestingManager.sol";
import "./interfaces/IManagedVestingWallet.sol";
import "./interfaces/IWalletFactory.sol";


contract ClaimHelper is ReentrancyGuard {

    struct VestingData {
        address manager;
        uint256 amount;
        bytes32[] proof;
    }

    address public EYWA;

    constructor(address token) {
        require(token != address(0), "ClaimHelper: zero address");
        EYWA = token;
    }

    function claim(
        address beneficiary,
        VestingData[] calldata data
    ) external nonReentrant {
        for (uint256 i; i < data.length; ++i) {
            IVestingByWhitelist impl = IVestingByWhitelist(data[i].manager);
            try impl.claim(beneficiary, data[i].amount, data[i].proof) {
            } catch Error(string memory reason) {
                revert(reason);
            } catch Panic(uint256) {
                revert("ClaimHelper: something went wrong");
            } catch (bytes memory) {
                revert("ClaimHelper: something went wrong");
            }
        }
    }

    function releasable(
        address beneficiary,
        address factory,
        address[] calldata managers
    ) external view returns (uint256[] memory amounts) {
        IWalletFactory factoryImpl = IWalletFactory(factory);
        amounts = new uint256[](managers.length);
        for (uint256 i; i < managers.length; ++i) {
            address wallet = factoryImpl.walletForOrigin(beneficiary, managers[i], 0, true);
            if (wallet != address(0)) {
                IVestingWallet walletImpl = IVestingWallet(wallet);
                amounts[i] = walletImpl.releasable(EYWA);
            }
        }
    }
}