pragma solidity 0.8.30;

/**
 * @title IRedemptionReserves
 * @notice Standardized redemption reserves interface returning WAD‑scaled reserves
 */
interface IRedemptionReserves {
    /**
     * @notice Retrieves the total value of redemption reserves
     * @param vault Primary storage for redemption reserves
     * @param custodialWallet Secondary storage (e.g., Fireblocks)
     * @return uint256 Total value of redemption reserves
     */
    function calculateTotalReserveValue(address vault, address custodialWallet) external view returns (uint256);
   
}
