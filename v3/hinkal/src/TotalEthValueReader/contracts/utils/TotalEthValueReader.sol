// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.34;

import { WadMath } from "./WadMath.sol";
import { LRTConstants } from "./LRTConstants.sol";
import { ILRTConfig } from "../interfaces/ILRTConfig.sol";
import { ILRTOracle } from "../interfaces/ILRTOracle.sol";
import { ILRTDepositPool } from "../interfaces/ILRTDepositPool.sol";
import { IRSETH } from "../interfaces/IRSETH.sol";

interface IReaderPausable {
    function paused() external view returns (bool);
}

/// @title TotalEthValueReader
/// @notice Read-only contract that computes the live total ETH value held in the Kelp protocol.
///         Iterates over every supported asset, fetches its ETH price from LRTOracle, and
///         multiplies by the total deposits tracked in LRTDepositPool.
contract TotalEthValueReader {
    using WadMath for uint256;

    error ZeroAddress();

    ILRTConfig public immutable LRT_CONFIG;
    ILRTOracle public immutable LRT_ORACLE;

    constructor(address lrtConfigAddr, address lrtOracleAddr) {
        if (lrtConfigAddr == address(0) || lrtOracleAddr == address(0)) revert ZeroAddress();
        LRT_CONFIG = ILRTConfig(lrtConfigAddr);
        LRT_ORACLE = ILRTOracle(lrtOracleAddr);
    }

    /// @notice Returns the total ETH value of all assets currently held in the protocol.
    /// @return totalETH Sum across all supported assets of (totalDeposits * assetPriceInETH), in 1e18 precision.
    function getTotalEthValueInProtocol() external view returns (uint256 totalETH) {
        (,, totalETH) = _getEthValueSnapshot(false);
    }

    /// @notice Computes the projected rsETH price using the current on-chain TVL snapshot.
    /// @dev Mirrors LRTOracle._applyRsETHPriceUpdate() fee accounting without writing state.
    ///      Fee minting is suppressed whenever the deposit pool, withdrawal manager, or oracle is paused.
    ///      Price-limit enforcement and any state writes are intentionally omitted (view only).
    /// @return livePrice The projected rsETH/ETH price in 1e18 precision.
    function getLiveRsETHPrice() external view returns (uint256 livePrice) {
        IRSETH rseth = IRSETH(LRT_CONFIG.rsETH());
        uint256 rsethSupply = rseth.totalSupply();

        if (rsethSupply == 0) {
            return 1 ether;
        }

        uint256 totalETHInProtocol = _getTotalEthInProtocol();

        uint256 currentPrice = LRT_ORACLE.rsETHPrice();
        uint256 previousTVL = rsethSupply.mulWad(currentPrice);
        bool protocolPaused = _isProtocolPaused();

        uint256 protocolFeeInETH = 0;
        if (!protocolPaused && totalETHInProtocol > previousTVL) {
            uint256 rewardAmount = totalETHInProtocol - previousTVL;
            protocolFeeInETH = (rewardAmount * LRT_CONFIG.protocolFeeInBPS()) / 10_000;
        }

        livePrice = (totalETHInProtocol - protocolFeeInETH).divWad(rsethSupply);
    }

    /// @notice Returns the ETH value contribution of each supported asset individually.
    /// @return assets    Ordered list of supported asset addresses.
    /// @return ethValues ETH value (1e18 precision) for each corresponding asset.
    function getEthValuePerAsset() external view returns (address[] memory assets, uint256[] memory ethValues) {
        (assets, ethValues,) = _getEthValueSnapshot(true);
    }

    function _getTotalEthInProtocol() private view returns (uint256 totalETH) {
        (,, totalETH) = _getEthValueSnapshot(false);
    }

    function _getEthValueSnapshot(bool includeBreakdown)
        private
        view
        returns (address[] memory assets, uint256[] memory ethValues, uint256 totalETH)
    {
        address depositPool = LRT_CONFIG.getContract(LRTConstants.LRT_DEPOSIT_POOL);
        assets = LRT_CONFIG.getSupportedAssetList();
        uint256 len = assets.length;

        if (includeBreakdown) {
            ethValues = new uint256[](len);
        }

        for (uint256 i; i < len;) {
            address asset = assets[i];
            uint256 assetPriceInETH = LRT_ORACLE.getAssetPrice(asset);
            uint256 totalDeposits = ILRTDepositPool(depositPool).getTotalAssetDeposits(asset);
            uint256 ethValue = totalDeposits.mulWad(assetPriceInETH);
            totalETH += ethValue;

            if (includeBreakdown) {
                ethValues[i] = ethValue;
            }

            unchecked {
                ++i;
            }
        }
    }

    function _isProtocolPaused() private view returns (bool) {
        address depositPool = LRT_CONFIG.getContract(LRTConstants.LRT_DEPOSIT_POOL);
        address withdrawalManager = LRT_CONFIG.getContract(LRTConstants.LRT_WITHDRAW_MANAGER);

        return IReaderPausable(depositPool).paused() || IReaderPausable(withdrawalManager).paused()
            || IReaderPausable(address(LRT_ORACLE)).paused();
    }
}
