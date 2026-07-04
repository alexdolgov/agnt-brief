// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {Abra} from "src/token/Abra.sol";
import {AbraStaking} from "src/token/AbraStaking.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IEpochController} from 'src/interfaces/IEpochController.sol';
import {currentEpoch, previousEpoch, WEEK} from "src/libraries/EpochMath.sol";

error MinterUpgradeable_AlreadyMinted();
error MinterUpgradeable_AccessDenied();

// TODO: FIXME: event with next emission

contract MinterUpgradeable is AccessManagedUpgradeable, UUPSUpgradeable, IEpochController {

    /// Represents 1% decrease in emission each week
    uint256 constant RETENTION_RATE = 990;
    uint256 constant PRECISION = 1000;

    Abra private immutable ABRA;

    address public master;
    /// Weekly emission. Decreased each week
    uint   public weeklyEmission;
    uint32 public openEpoch;
    uint32 public firstEpoch;

    event FirstEpoch(uint256 firstEpoch);

    constructor(Abra _abra) {
        ABRA = _abra;
        _disableInitializers();
    }

    function initialize(uint _weeklyEmission, address _authority) public initializer {
        __AccessManaged_init(_authority);

        weeklyEmission = _weeklyEmission;
        firstEpoch = currentEpoch();
        openEpoch  = currentEpoch();

        emit FirstEpoch(currentEpoch());
    }

    /// @dev intentionally using `restricted` for internal function
    function _authorizeUpgrade(address) internal override restricted {
    }

    function mint(address recevier) external returns (uint minted) {
        if (msg.sender != master)        revert MinterUpgradeable_AccessDenied();
        if (openEpoch >= currentEpoch()) revert MinterUpgradeable_AlreadyMinted();

        openEpoch += WEEK;
        uint emission = weeklyEmission;
        weeklyEmission = emission * RETENTION_RATE / PRECISION;
        ABRA.mint(recevier, emission);
        return emission;
    }

    function abra() external view returns (Abra) {
        return ABRA;
    }

    function setMaster(address _master) external restricted {
        master = _master;
    }
}
