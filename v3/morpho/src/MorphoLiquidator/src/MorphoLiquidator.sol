// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Id, IMorpho, MarketParams, Market, Position} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoLiquidateCallback} from "../lib/morpho-blue/src/interfaces/IMorphoCallbacks.sol";
import {MarketParamsLib} from "../lib/morpho-blue/src/libraries/MarketParamsLib.sol";
import {IOracle} from "../lib/morpho-blue/src/interfaces/IOracle.sol";
import {IIrm} from "../lib/morpho-blue/src/interfaces/IIrm.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import {MorphoStorageLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoStorageLib.sol";
import {MorphoLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoLib.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import "../lib/morpho-blue/src/libraries/ConstantsLib.sol";
import {AccessControl} from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {ISwapper} from "./interfaces/ISwapper.sol";

contract MorphoLiquidator is IMorphoLiquidateCallback, AccessControl {
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    using SafeERC20 for IERC20;
    using MorphoLib for IMorpho;
    using MarketParamsLib for MarketParams;

    error UnsupportedChain();

    IMorpho public immutable morpho;
    ISwapper public swapper;

    address private immutable STEAKHOUSE_SIGNER_1 =
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address private immutable STEAKHOUSE_SMOL_OPS =
        0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8;
    // 0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8 on Base
    // 0x29d4CDFee8F533af8529A9e1517b580E022874f7 on Ethereum

    constructor(ISwapper _swapper) {
        if (block.chainid == 1) {
            STEAKHOUSE_SMOL_OPS = 0x29d4CDFee8F533af8529A9e1517b580E022874f7;
            morpho = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
        } else if (block.chainid == 8453) {
            STEAKHOUSE_SMOL_OPS = 0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8;
            morpho = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
        } else {
            revert UnsupportedChain();
        }
        swapper = _swapper;
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(DEFAULT_ADMIN_ROLE, STEAKHOUSE_SMOL_OPS);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SIGNER_1);
        _grantRole(OPERATOR_ROLE, STEAKHOUSE_SMOL_OPS);
        _grantRole(OPERATOR_ROLE, msg.sender);
    }

    modifier onlyMorpho() {
        require(
            msg.sender == address(morpho),
            "msg.sender should be Morpho Blue"
        );
        _;
    }

    function onMorphoLiquidate(
        uint256 repaidAssets,
        bytes calldata data
    ) external onlyMorpho {
        (IERC20 loanToken, IERC20 collateralToken) = abi.decode(
            data,
            (IERC20, IERC20)
        );

        uint256 toSell = collateralToken.balanceOf(address(this));
        collateralToken.safeIncreaseAllowance(address(swapper), toSell);
        swapper.sell(collateralToken, loanToken, toSell);
    }

    function liquidate(
        MarketParams calldata marketParams,
        address borrower,
        uint256 repaidShares,
        bool seizeFullCollat
    )
        public
        onlyRole(OPERATOR_ROLE)
        returns (uint256 seizedAssets, uint256 repaidAssets)
    {
        Id id = marketParams.id();

        uint256 seizedCollateral;

        if (seizeFullCollat) seizedCollateral = morpho.collateral(id, borrower);
        else if (repaidShares == 0)
            repaidShares = morpho.borrowShares(id, borrower);

        _approveMaxTo(marketParams.loanToken, address(morpho));

        (seizedAssets, repaidAssets) = morpho.liquidate(
            marketParams,
            borrower,
            seizedCollateral,
            repaidShares,
            abi.encode(marketParams.loanToken, marketParams.collateralToken)
        );

        IERC20(marketParams.loanToken).safeTransfer(
            msg.sender,
            IERC20(marketParams.loanToken).balanceOf(address(this))
        );
    }

    function setSwapper(ISwapper _swapper) external onlyRole(DEFAULT_ADMIN_ROLE) {
        swapper = _swapper;
    }

    function _approveMaxTo(address asset, address spender) internal {
        if (IERC20(asset).allowance(address(this), spender) == 0) {
            IERC20(asset).safeIncreaseAllowance(spender, type(uint256).max);
        }
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTIONS
     ******************************************/

    function recover(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            amount <= token.balanceOf(address(this)),
            "Insufficient balance"
        );
        token.safeTransfer(where, amount);
    }

    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.safeTransfer(where, token.balanceOf(address(this)));
    }

    function recoverETH(
        address payable where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount <= address(this).balance, "Insufficient balance");
        where.transfer(amount);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.approve(where, 0);
        token.safeIncreaseAllowance(where, amount);
    }
}
