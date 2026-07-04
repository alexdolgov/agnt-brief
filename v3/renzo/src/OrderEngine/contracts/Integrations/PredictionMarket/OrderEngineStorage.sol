// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../../Permissions/IRoleManager.sol";
import "../../LEZyVault/ILEZyVault.sol";

abstract contract OrderEngineStorageV1 {
    enum OrderType {
        Buy,
        Sell
    }

    enum OrderSide {
        Yes,
        No
    }

    enum ExecutionType {
        MarketFillOrKill,
        MarketFillAndKill,
        MarketWithSlippage,
        Limit
    }

    struct OrderRequest {
        uint256 paymentAssetAmount;
        OrderType orderType;
        OrderSide orderSide;
        bytes32 marketId;
        bytes32 exchangeId;
        uint256 fillPrice; // in USD
        uint256 size; // number of contracts
        ExecutionType executionType;
        uint256 slippageTolerance; // in percentage, 0 if not applicable
        uint256 maxFee; // in USD
        uint256 deadline;
    }

    struct OrderInfo {
        uint256 orderNonce;
        address user;
        OrderRequest orderRequest;
    }

    struct ProcessedOrder {
        bool isExecuted;
        uint256 orderId;
    }

    struct MarketConfig {
        OrderSide orderSide;
        bytes32 marketId;
        bytes32 exchangeId;
    }

    struct MarketVaultConfig {
        MarketConfig marketConfig;
        ILEZyVault vault;
    }

    uint256 orderNonce;

    mapping(uint256 => OrderInfo) internal orders;

    IERC20 public paymentAsset;

    IRoleManager public roleManager;

    mapping(bytes32 => ILEZyVault) public marketToVault;

    uint256 public minOrderAmount;

    uint256 public orderProcessingFee; // In paymentAsset

    address public feeRecipient;

    address public orderPaymentReceiver;
}
