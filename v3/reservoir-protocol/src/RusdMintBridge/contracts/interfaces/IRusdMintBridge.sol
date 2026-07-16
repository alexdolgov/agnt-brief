// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// layer-zero
import { SendParam } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { MessagingFee } from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";

// interfaces
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ICreditEnforcer } from "./ICreditEnforcer.sol";
import { RusdOftAdapter } from "../RusdOftAdapter.sol";

interface IRusdMintBridge {
    /// @notice USDC token
    /// @return usdc USDC token
    function usdc() external view returns (IERC20 usdc);

    /// @notice Reservoir's rUSD token
    /// @return rusd rUSD token
    function rusd() external view returns (IERC20 rusd);

    /// @notice Reservoir's CreditEnforcer contract
    /// @return creditEnforcer Reservoir's CreditEnforcer contract
    function creditEnforcer() external view returns (ICreditEnforcer creditEnforcer);

    /// @notice LayerZero's OFT Adapter for Reservoir's rUSD token
    /// @return rusdOftAdapter LayerZero's OFT Adapter for Reservoir's rUSD token
    function rusdOftAdapter() external view returns (RusdOftAdapter rusdOftAdapter);

    /// @notice Mint rUSD on a destination chain with USDC on a source chain
    /// @dev Needs USDC allowance
    /// @dev Swaps USDC for rUSD on Ethereum mainnet and bridges rUSD to the destination chain
    // IMPORTANT! The amountLD number in `sendParams` argument is rUSD amount, therefore 18 decimals
    // But the function converts this number to 6 decimals (because of USDC interaction)
    // For the transaction to not revert due to rounding error:
    // 1) last 12 decimals of amountLD should be zeroes
    // 2) if option 1 isn't possible, minAmountLD should be configured accordingely to make up for the rounding loss
    /// @param sendParam Layerzero's SendParam object.
    /// @param messagingFee Layerzero's MessagingFee object
    function mintRusd(SendParam calldata sendParam, MessagingFee calldata messagingFee) external payable;
}
