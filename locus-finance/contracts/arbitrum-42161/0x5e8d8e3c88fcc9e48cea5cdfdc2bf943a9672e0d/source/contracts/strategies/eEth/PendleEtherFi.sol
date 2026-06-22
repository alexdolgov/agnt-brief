// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

import {PendleGeneral, PendleGeneralInfo} from "../PendleGeneral.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";


contract PendleEtherFi is Initializable, PendleGeneral, UUPSUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    bytes32 public constant UPGRADER = keccak256("UPGRADER");

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER){}

    constructor() {
        _disableInitializers();
    }

    function initialize(
        PendleGeneralInfo calldata _info,
        address mainAdmin,
        address vault,
        address keeper,
        address strategist,
        address[] calldata tokens,
        address[] calldata addressToApprove
    ) external initializer {
        __Base_Strategy_Initialize(vault, strategist, keeper);
        __UUPSUpgradeable_init();
        __AccessControl_init();
        mainInfo = _info;
        _grantRole(DEFAULT_ADMIN_ROLE, mainAdmin);
        _grantRole(UPGRADER, mainAdmin);
        for (uint i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).forceApprove(address(addressToApprove[i]), type(uint256).max);
        }
        if (_info.extraDex != address(0)) {
            IERC20(mainInfo.underlyingAsset).forceApprove(_info.extraDex, type(uint256).max);
        }
    }

    function _swapAssetsViaAnotherDex(address _tokenIn, address _tokenOut, uint24 _fee, uint256 amount) internal override {
        ISwapRouter.ExactInputSingleParams memory params;
        params.tokenIn = _tokenIn;
        params.tokenOut = _tokenOut;
        params.fee = 250;
        params.recipient = address(this);
        params.deadline = block.timestamp;
        params.amountIn = amount;
        params.amountOutMinimum = pendleLogic.assetToWantRate(amount) * mainInfo.slippage / 10000;
        params.sqrtPriceLimitX96 = 0;
        ISwapRouter(mainInfo.extraDex).exactInputSingle(params);
    }
}