//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";

import "./ITreasury.sol";
import "../../shared/AdminableUpgradeable.sol";
import "../external/IMasterOfCoin.sol";
import "../external/IAtlasMine.sol";
import "../external/IMagic.sol";

abstract contract TreasuryState is Initializable, ITreasury, ERC1155HolderUpgradeable, AdminableUpgradeable {

    IMasterOfCoin public masterOfCoin;
    IAtlasMine public atlasMine;
    IMagic public magic;

    // Utilization needed to power bridgeworld. 100% = 1 * 10**18
    uint256 public utilNeededToPowerBW;

    // number from 0-100
    uint256 public percentMagicToMine;

    function __TreasuryState_init() internal initializer {
        AdminableUpgradeable.__Adminable_init();
        ERC1155HolderUpgradeable.__ERC1155Holder_init();

        // 30%
        utilNeededToPowerBW = 3 * 10**17;
        percentMagicToMine = 33;
    }
}