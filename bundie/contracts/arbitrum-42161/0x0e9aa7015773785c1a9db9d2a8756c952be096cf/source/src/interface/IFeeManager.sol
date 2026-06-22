// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IFeeManager
/// @author Bundie Team
/// @notice Interface for Bundie fee configuration registry
/// @dev Exposes timestamp-based config resolution to prevent in-flight fee hikes
interface IFeeManager {
    /// @notice Get the performance fee config that applies at a given timestamp
    /// @param atTimestamp Timestamp to evaluate fee config at
    /// @return perfFeeBps Performance fee rate in bps
    /// @return recipient Fee recipient address (may be address(0) if fee disabled)
    function getPerformanceFeeConfig(uint48 atTimestamp) external view returns (uint16 perfFeeBps, address recipient);

    /// @notice Get the management fee config that applies at a given timestamp (annualized)
    function getManagementFeeConfig(uint48 atTimestamp)
        external
        view
        returns (uint16 mgmtFeeBpsAnnual, address recipient);

    /// @notice Apply fees (performance + management) by pulling from vault and updating accounting
    /// @dev Vault must approve FeeManager to spend assetToken before calling.
    ///      FeeManager pulls fees, emits events, returns updated accounting.
    ///      This is the ONLY entrypoint vaults should use at settlement.
    /// @param user Vault owner address (for event attribution)
    /// @param strategyId Strategy identifier
    /// @param assetToken Asset token address for fee transfer
    /// @param positionId Stable position ID
    /// @param principalBefore Position principal before withdrawal (asset units)
    /// @param sharesBefore Position shares before withdrawal
    /// @param sharesWithdrawn Shares withdrawn in this settlement
    /// @param assetsReceived Asset tokens received for this settlement
    /// @param lastAccrualBefore Last mgmt fee accrual timestamp
    /// @param nowTimestamp Current timestamp (block.timestamp)
    /// @param atTimestamp Timestamp to evaluate fee config at (initiation time for cross-chain)
    /// @param msgGuid Message GUID (bytes32(0) for local)
    /// @return principalAfter Updated principal to store
    /// @return lastAccrualAfter Updated accrual timestamp to store
    function applyAndChargeFees(
        address user,
        bytes32 strategyId,
        address assetToken,
        uint256 positionId,
        uint256 principalBefore,
        uint256 sharesBefore,
        uint256 sharesWithdrawn,
        uint256 assetsReceived,
        uint48 lastAccrualBefore,
        uint48 nowTimestamp,
        uint48 atTimestamp,
        bytes32 msgGuid
    ) external returns (uint256 principalAfter, uint48 lastAccrualAfter);
}
