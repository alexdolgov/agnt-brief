// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IGeneralError} from "../common/IGeneralError.sol";
import {MemberPool} from "./MemberPool.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

contract MemberPoolController is IGeneralError, AccessControlUpgradeable {
    using Math for uint256;

    bytes32 private constant CONTRACT_ID = "MemberPoolController";

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant HUB_APY_ROLE = keccak256("HUB_APY_ROLE");

    MemberPool public memberPool;
    uint256 public emissionPerYear;
    uint256 public apyX10000Max;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(
        MemberPool _memberPool,
        uint256 _emissionPerYear,
        uint256 _apyX10000Max
    ) external onlyRole(ADMIN_ROLE) {
        memberPool = _memberPool;
        emissionPerYear = _emissionPerYear;
        apyX10000Max = _apyX10000Max;
    }

    function refreshApy(uint256[] calldata hubIds, uint256[] calldata bscStakes) external onlyRole(HUB_APY_ROLE) {
        uint256[] memory hubStakes = new uint256[](bscStakes.length);
        for (uint256 i = 0; i < hubIds.length; i++) {
            hubStakes[i] = bscStakes[i] + memberPool.hubAssetAmount(hubIds[i]);
        }
        uint256[] memory apyX10000s = calculateApy(hubStakes);
        setApy(hubIds, apyX10000s);
    }

    function setApy(uint256[] calldata hubIds, uint256[] memory apyX10000s) public onlyRole(HUB_APY_ROLE) {
        memberPool.setupHubRewardApy(hubIds, apyX10000s);
    }

    function calculateApy(uint256[] memory hubStakes) public view returns (uint256[] memory apyX10000s) {
        uint256 totalNormStakes;
        apyX10000s = new uint256[](hubStakes.length);
        uint256[] memory normStakes = new uint256[](hubStakes.length);
        for (uint256 i; i < hubStakes.length; i++) {
            if (hubStakes[i] > 0) {
                normStakes[i] += Math.sqrt(hubStakes[i]);
                totalNormStakes += normStakes[i];
            }
        }
        for (uint256 i; i < hubStakes.length; i++) {
            apyX10000s[i] = Math.min(
                (emissionPerYear * normStakes[i] * 10000) / totalNormStakes / hubStakes[i],
                apyX10000Max
            );
        }
    }
}
