// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IMerklGaugeConfig } from "./interfaces/IMerklGaugeConfig.sol";

contract MerklGaugeConfig is Ownable, IMerklGaugeConfig {
    /* --------------------------------------------------------------------------
     * Storage 
    -------------------------------------------------------------------------- */

    uint32 public constant DEFAULT_PROP_TOKEN_0 = 4500;
    uint32 public constant DEFAULT_PROP_TOKEN_1 = 4500;
    uint32 public constant DEFAULT_PROP_FEE = 1000;
    uint32 public constant DEFAULT_OUT_OF_RANGE = 0;

    address[] public positionWrappers;
    uint32[] public wrapperTypes;
    mapping(address => IMerklGaugeConfig.MerklConfig) public configs;

    /* --------------------------------------------------------------------------
     * Events 
    -------------------------------------------------------------------------- */

    event SetConfig(
        address gauge,
        uint32 propToken0,
        uint32 propToken1,
        uint32 propFees,
        uint32 isOutOfRangeIncentivized
    );

    /* --------------------------------------------------------------------------
     * Constructor 
    -------------------------------------------------------------------------- */

    constructor() Ownable(msg.sender) {}

    /* --------------------------------------------------------------------------
     * Owner 
    -------------------------------------------------------------------------- */

    function setConfig(
        address _gauge,
        uint32 _propToken0,
        uint32 _propToken1,
        uint32 _propFees,
        uint32 _isOutOfRangeIncentivized
    ) external onlyOwner {
        configs[_gauge] = IMerklGaugeConfig.MerklConfig({
            isSet: true,
            propToken0: _propToken0,
            propToken1: _propToken1,
            propFees: _propFees,
            isOutOfRangeIncentivized: _isOutOfRangeIncentivized
        });

        emit SetConfig(_gauge, _propToken0, _propToken1, _propFees, _isOutOfRangeIncentivized);
    }

    function setWrappers(address[] calldata _positionWrappers, uint32[] calldata _wrapperTypes) external onlyOwner {
        uint256 len = _positionWrappers.length;
        require(len == _wrapperTypes.length, "!length");

        for (uint256 i = 0; i < len; i++) {
            positionWrappers.push(_positionWrappers[i]);
            wrapperTypes.push(_wrapperTypes[i]);
        }
    }

    function clearWrappers() external onlyOwner {
        delete wrapperTypes;
        delete positionWrappers;
    }

    /* --------------------------------------------------------------------------
     * Getters 
    -------------------------------------------------------------------------- */

    function getPositionWrappers() external view override returns (address[] memory) {
        return positionWrappers;
    }

    function getWrapperTypes() external view override returns (uint32[] memory) {
        return wrapperTypes;
    }

    function getConfig(address _gauge) external view override returns (IMerklGaugeConfig.MerklConfig memory config) {
        config = configs[_gauge];
        if (!config.isSet) {
            config = _getDefaultConfig();
        }
    }

    /* --------------------------------------------------------------------------
     * Utils 
    -------------------------------------------------------------------------- */

    function _getDefaultConfig() internal pure returns (MerklConfig memory) {
        return
            IMerklGaugeConfig.MerklConfig({
                isSet: false,
                propToken0: DEFAULT_PROP_TOKEN_0,
                propToken1: DEFAULT_PROP_TOKEN_1,
                propFees: DEFAULT_PROP_FEE,
                isOutOfRangeIncentivized: DEFAULT_OUT_OF_RANGE
            });
    }
}
