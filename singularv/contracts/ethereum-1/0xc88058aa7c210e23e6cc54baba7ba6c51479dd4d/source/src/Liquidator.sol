// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IMorpho, MarketParams} from "lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoLiquidateCallback} from "lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {AccessControl} from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Liquidator bot using 1inch provided by Morpho and modified a bit
 */
contract Liquidator is AccessControl, IMorphoLiquidateCallback {
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    using SafeERC20 for IERC20;

    struct SwapDescription {
        IERC20 srcToken;
        IERC20 dstToken;
        address payable srcReceiver;
        address payable dstReceiver;
        uint256 amount;
        uint256 minReturnAmount;
        uint256 flags;
    }

    address private immutable STEAKHOUSE_SMOL_OPS =
        0x29d4CDFee8F533af8529A9e1517b580E022874f7;
    address public immutable MORPHO_BLUE;
    address public immutable AGGREGATION_ROUTER_V5;
    address public immutable SWAP_ROUTER_V3;

    constructor(address blue, address oneInchRouter, address uniswapRouter) {
        MORPHO_BLUE = blue;
        AGGREGATION_ROUTER_V5 = oneInchRouter;
        SWAP_ROUTER_V3 = uniswapRouter;
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SMOL_OPS);
        _grantRole(OPERATOR_ROLE, msg.sender);
    }

    function liquidate(
        MarketParams calldata marketParams,
        address borrower,
        uint256 seizedAssets,
        uint256 repaidShares,
        bool isUniswap,
        bytes calldata data
    ) external onlyRole(OPERATOR_ROLE) {
        bytes memory newData = abi.encode(
            isUniswap,
            marketParams.collateralToken,
            marketParams.loanToken,
            seizedAssets,
            data
        );

        IMorpho(MORPHO_BLUE).liquidate(
            marketParams,
            borrower,
            seizedAssets,
            repaidShares,
            newData
        );

        // Ensure no tokens remains on the Liquidator.
        IERC20 collateralToken = IERC20(marketParams.collateralToken);
        IERC20 loanToken = IERC20(marketParams.loanToken);
        uint256 collateralBalance = collateralToken.balanceOf(address(this));
        uint256 loanBalance = loanToken.balanceOf(address(this));
        if (collateralBalance > 0)
            collateralToken.safeTransfer(msg.sender, collateralBalance);
        if (loanBalance > 0) loanToken.safeTransfer(msg.sender, loanBalance);
    }

    function onMorphoLiquidate(
        uint256 repaidAssets,
        bytes calldata data
    ) external onlyMorpho {
        (
            bool isUniswap,
            IERC20 collateralToken,
            IERC20 loanToken,
            uint256 seizedAssets,
            bytes memory _callData
        ) = abi.decode(data, (bool, IERC20, IERC20, uint256, bytes));

        if (isUniswap) {
            collateralToken.safeIncreaseAllowance(SWAP_ROUTER_V3, seizedAssets);
            (bool succ, ) = SWAP_ROUTER_V3.call(_callData);

            require(succ, "Trade Uniswap unsuccessful");

            loanToken.safeIncreaseAllowance(msg.sender, repaidAssets);
        } else {
            collateralToken.safeIncreaseAllowance(
                AGGREGATION_ROUTER_V5,
                seizedAssets
            );
            (bool succ, bytes memory _returnData) = AGGREGATION_ROUTER_V5.call(
                _callData
            );

            require(succ, "Trade 1inch unsuccessful");

            (uint256 returnAmount, ) = abi.decode(
                _returnData,
                (uint256, uint256)
            );
            require(
                returnAmount >= repaidAssets,
                "Not enough assets to repay."
            );
            loanToken.safeIncreaseAllowance(msg.sender, repaidAssets);
        }
    }

    modifier onlyMorpho() {
        require(msg.sender == MORPHO_BLUE, "msg.sender should be Morpho Blue");
        _;
    }
}
