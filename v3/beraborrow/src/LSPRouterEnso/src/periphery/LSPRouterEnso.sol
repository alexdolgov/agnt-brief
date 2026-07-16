// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {DynamicArrayLib} from "solady/utils/DynamicArrayLib.sol";
import {PriceLib} from "../libraries/PriceLib.sol";
import {IMetaBeraborrowCore} from "../interfaces/core/IMetaBeraborrowCore.sol";
import {TokenValidationLib} from "../libraries/TokenValidationLib.sol";
import {ILiquidStabilityPool} from "../interfaces/core/ILiquidStabilityPool.sol";
import {ILiquidStabilityPoolGetters} from "../interfaces/core/helpers/ILSPGetters.sol";
import {IInfraredCollateralVault} from "../interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IPriceFeed} from "../interfaces/core/IPriceFeed.sol";
import {IAsset} from "../interfaces/utils/tokens/IAsset.sol";
import {ICollVaultRouter} from "../interfaces/periphery/ICollVaultRouter.sol";
import {ILSPRouter} from "../interfaces/periphery/ILSPRouter.sol";
import {IOBRouter} from "../interfaces/utils/integrations/IOBRouter.sol";
import {IWBera} from "../interfaces/utils/tokens/IWBERA.sol";
import {UtilsLib} from "../libraries/UtilsLib.sol";
import {SwappersLib} from "../libraries/SwappersLib.sol";
import {FeeLib} from "../libraries/FeeLib.sol";

/// @dev Doesn't have DelegatedOps functionality
contract LSPRouterEnso {
    using SwappersLib for SwappersLib.SwapperData;
    using SafeERC20 for IERC20;
    using PriceLib for uint;
    using TokenValidationLib for address;
    using TokenValidationLib for IInfraredCollateralVault;
    using TokenValidationLib for address[];
    using DynamicArrayLib for DynamicArrayLib.DynamicArray;
    using DynamicArrayLib for address[];
    using DynamicArrayLib for uint[];
    using UtilsLib for bytes;
    using FeeLib for uint;

    uint16 constant BP = 1e4;

    SwappersLib.SwapperData internal swapperData;
    IWBera immutable public wBera;
    ILiquidStabilityPool immutable public lsp;
    ILiquidStabilityPoolGetters immutable public lspGetters;
    ICollVaultRouter immutable public collVaultRouter;
    address immutable public nect;
    IInfraredCollateralVault immutable public IbgtVault;
    uint8 immutable public nectDecimals;
    IPriceFeed immutable public priceFeed;
    IMetaBeraborrowCore immutable public metaBeraborrowCore;
    mapping(address => bool) public whitelistedCallers;

    event WhitelistedSwapperUpdated(address indexed swapper, bool status);

    modifier onlyOwner() {
        require(msg.sender == metaBeraborrowCore.owner(), "CollVaultRouter: Only owner");
        _;
    }

    modifier onlyWhitelistedCaller() {
        require(whitelistedCallers[msg.sender], "not whitelisted");
        _;
    }

    constructor(address _lsp, address _lspGetters, address _collVaultRouter, address _priceFeed, address _metaBeraborrowCore, address _wBera, address _IbgtVault, address[] memory routers) {
        if (_lsp == address(0) || _lspGetters == address(0) || _collVaultRouter == address(0) || _priceFeed == address(0) || _metaBeraborrowCore == address(0) || _wBera == address(0) || _IbgtVault == address(0)) {
            revert("LSPRouter: 0 address");
        }

        lsp = ILiquidStabilityPool(_lsp);
        lspGetters = ILiquidStabilityPoolGetters(_lspGetters);
        collVaultRouter = ICollVaultRouter(_collVaultRouter);
        priceFeed = IPriceFeed(_priceFeed);
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
        wBera = IWBera(_wBera);

        IbgtVault = IInfraredCollateralVault(_IbgtVault);
        nect = lsp.asset();
        nectDecimals = IAsset(nect).decimals();

        // add routers on constructor
        for (uint i; i < routers.length; i++) {
            SwappersLib.addWhitelistedSwapper(swapperData, routers[i], true);
        }
    }

    function redeemToOne(
        ILSPRouter.RedeemToOneParams calldata params
    ) external onlyWhitelistedCaller returns (uint assets, uint totalAmountOut) {
        address[] memory tokensToClaim = lspUnderlyingTokens();
        ILSPRouter.Arr memory arr = _initArr(tokensToClaim, address(this));
        (, address[] memory tokens,) = previewRedeem(params.shares, params.caller);
        uint[] memory underlyingCurrAmounts = tokens.underlyingAmounts(arr.receiver);

        assets = lsp.redeem(params.shares, arr.receiver, msg.sender);
        require(assets >= params.minAssetsWithdrawn, "LSPRouter: assetsWithdrawn < minAssetsWithdrawn");

        totalAmountOut = _unwrapAndSwapToOne(
            ILSPRouter.UnwrapSwapToOneParams({
                tokens: tokens,
                tokensToClaim: tokensToClaim,
                arr: arr,
                targetToken: params.targetToken,
                receiver: params.receiver,
                minTargetTokenAmount: params.minTargetTokenAmount,
                swapRouter: params.swapRouter,
                tokensSwapCalldatas: params.tokensSwapCalldatas,
                underlyingCurrAmounts: underlyingCurrAmounts
            })
        );
    }

    function _unwrapAndSwapToOne(
        ILSPRouter.UnwrapSwapToOneParams memory params
    ) internal returns (uint totalAmountOut) {
        uint[] memory currAmounts = params.tokensToClaim.underlyingAmounts(address(this));
        for (uint i; i < params.tokensToClaim.length; i++) {
            uint amount = currAmounts[i] - params.arr.prevAmounts[i];
            if (amount > 0) {
                if (priceFeed.isCollVault(params.tokensToClaim[i])) {
                    IInfraredCollateralVault collVault = IInfraredCollateralVault(params.tokensToClaim[i]);

                    _withdrawUnderlyingCollVaultAssets(
                        collVault,
                        amount
                    );
                }
            }
        }

        uint[] memory swapAmounts = new uint[](params.tokens.length);
        for (uint i; i < params.tokens.length; i++) {
            swapAmounts[i] = IERC20(params.tokens[i]).balanceOf(address(this)) - params.underlyingCurrAmounts[i];
        }
   
        totalAmountOut = _swapToTargetToken(
            params.targetToken,
            ILSPRouter.SwapAllTokensToOneParams({
                receiver: params.receiver,
                minTargetTokenAmount: params.minTargetTokenAmount,
                swapRouter: params.swapRouter,
                tokensSwapCalldatas: params.tokensSwapCalldatas
            }),
            params.tokens,
            swapAmounts
        );
    }

    function _swapToTargetToken(
        address targetToken,
        ILSPRouter.SwapAllTokensToOneParams memory params,
        address[] memory _tokens,
        uint[] memory _amounts
    ) private returns (uint targetTokenAmountOut) {
        uint tokensLength = _tokens.length;

        uint prevTargetTokenAmount = IERC20(targetToken).balanceOf(params.receiver);

        for (uint i; i < tokensLength; i++) {
            uint amount = _amounts[i];
            address _token = _tokens[i];
            if (_token != targetToken) {
                if (amount > 0 && params.tokensSwapCalldatas[i].length > 0) {                   
                    IERC20(_token).safeIncreaseAllowance(address(params.swapRouter), amount);            

                    SwappersLib.executeSwap(swapperData, params.swapRouter, params.tokensSwapCalldatas[i]);
                }
            } else {
                IERC20(targetToken).safeTransfer(params.receiver, amount);
            }
        }

        targetTokenAmountOut = IERC20(targetToken).balanceOf(params.receiver) - prevTargetTokenAmount;
        require(targetTokenAmountOut >= params.minTargetTokenAmount, "LSPRouter: targetTokenAmountOut < minTargetTokenAmount");
    }

    function _withdrawUnderlyingCollVaultAssets(
        IInfraredCollateralVault collVault,
        uint amount
    ) private {
        // Note: We acknowledge that it may not have track of newly added tokens to the underlying InfraredVault
        address[] memory underlyingTokens = collVault.tryGetRewardedTokens();
        (address[] memory rewardTokens, uint length) = underlyingTokens.pushIfNotIncluded(collVault.asset());
    
        for (uint i; i < length; i++) {
            // if token is ibgtvault continue as it is unwrapped at vault lvl
            if (rewardTokens[i] == address(IbgtVault)) continue;
            // ignore tokens with 0 balance, without accounting `iVault.earned()`
            if (collVault.getBalance(rewardTokens[i]) * amount / collVault.totalSupply() == 0) continue;
        }

        collVault.redeem(amount, address(this), address(this));
    }

    function previewRedeemedAssetsByCaller(uint shares, address caller) public view returns (uint) {
        uint defaultFeeBP = metaBeraborrowCore.lspExitFee();
        uint callerFeeBP = metaBeraborrowCore.getLspExitFee(caller);

        uint adjustedShares = shares * (BP - callerFeeBP) / (BP - defaultFeeBP);

        return lsp.previewRedeem(adjustedShares);
    }

    function previewRedeem(uint shares, address caller)
        public
        view
        returns (uint assets, address[] memory tokens, uint[] memory amounts)
    {
        // Use all underlying tokens for pro-rata redemption
        address[] memory underlyingTokens = lspUnderlyingTokens();
        uint length = underlyingTokens.length;

        // Simulate total assets redeemed based on shares
        assets = previewRedeemedAssetsByCaller(shares, caller);
        // Simulate expected withdrawal amounts for each underlying token
        uint[] memory expectedAmounts = _simulateWithdraw(shares, underlyingTokens, caller);

        DynamicArrayLib.DynamicArray memory _tokens;
        DynamicArrayLib.DynamicArray memory _amounts;
        bool firstCollVaultFound;

        for (uint i; i < length; i++) {
            if (expectedAmounts[i] > 0) {
                // If the token is from a collateral vault, simulate withdrawal and add any reward tokens once
                if (priceFeed.isCollVault(underlyingTokens[i])) {
                    if (!firstCollVaultFound) {
                        address[] memory ibgtRewardedTokens = IbgtVault.tryGetRewardedTokens();
                        uint ibgtRewardedLength = ibgtRewardedTokens.length;
                        for (uint j; j < ibgtRewardedLength; j++) {
                            if (IbgtVault.getBalance(ibgtRewardedTokens[j]) == 0) continue;
                            TokenValidationLib.aggregateIfNotExistent(ibgtRewardedTokens[j], 0, _tokens, _amounts);
                        }
                        firstCollVaultFound = true;
                    }
                    IInfraredCollateralVault collVault = IInfraredCollateralVault(underlyingTokens[i]);
                    _previewWithdrawUnderlyingCollVaultAssets(collVault, expectedAmounts[i], _tokens, _amounts);
                } else {
                    TokenValidationLib.aggregateIfNotExistent(underlyingTokens[i], expectedAmounts[i], _tokens, _amounts);
                }
            }
        }
        tokens = _tokens.asAddressArray();
        amounts = _amounts.asUint256Array();
    }

    function _simulateWithdraw(uint shares, address[] memory tokens, address caller)
        internal
        view
        returns (uint[] memory expectedAmounts)
    {
        expectedAmounts = new uint[](tokens.length);
        uint fee = shares.feeOnRaw(metaBeraborrowCore.getLspExitFee(caller));
        shares -= fee;

        uint totalSupply = lsp.totalSupply();
        require(totalSupply > 0, "No total supply");

        for (uint i; i < tokens.length; i++) {
            uint tokenVirtualBalance = lspGetters.getTokenVirtualBalance(tokens[i]);
            expectedAmounts[i] = shares * tokenVirtualBalance / totalSupply;
        }
    }

    function _previewWithdrawUnderlyingCollVaultAssets(
        IInfraredCollateralVault collVault,
        uint amount,
        DynamicArrayLib.DynamicArray memory tokens,
        DynamicArrayLib.DynamicArray memory amounts
    ) private view {
        (address[] memory _expectedTokens, uint[] memory _expectedAmounts) = collVaultRouter.previewRedeemUnderlying(collVault, amount);
        uint length = _expectedTokens.length;

        for (uint i; i < length; i++) {
            uint vaultUnderlyingAmount = _expectedAmounts[i];
            address token = _expectedTokens[i];

            if (vaultUnderlyingAmount > 0) {
                TokenValidationLib.aggregateIfNotExistent(token, vaultUnderlyingAmount, tokens, amounts);
            }
        }
    }

    function lspUnderlyingTokens() public view returns (address[] memory tokens) {
        address[] memory collaterals = lspGetters.collateralTokens();
        address[] memory extraAssets = lspGetters.extraAssets();
        uint collateralsLength = collaterals.length;
        uint extraAssetsLength = extraAssets.length;
        uint length = collateralsLength + extraAssetsLength + 1;

        tokens = new address[](length);

        for (uint i; i < collateralsLength; i++) {
            tokens[i] = collaterals[i];
        }

        for (uint i = collateralsLength; i < length - 1; i++) {
            tokens[i] = extraAssets[i - collateralsLength];
        }

        tokens[length - 1] = nect;
    }

    function claimLockedTokens(IERC20[] calldata tokens, uint[] calldata amounts) external {
        require(msg.sender == metaBeraborrowCore.owner(), "Only owner");

        uint length = tokens.length;
        for (uint i; i < length; i++) {
            if (address(tokens[i]) == address(0)) {
                (bool success,) = metaBeraborrowCore.feeReceiver().call{value: amounts[i]}("");
                require(success, "ETH transfer failed");
            } else {
                tokens[i].safeTransfer(metaBeraborrowCore.feeReceiver(), amounts[i]);
            }
        }
    }

    /// @notice Aggregates token if not in the array
    /// @dev Warning, modifies memory references
    function _aggregateIfNotExistentWithoutAmounts(
        address[] memory tokens,
        address token
    ) internal pure {
        uint length = tokens.length;
        for (uint i; i < length; i++) {
            if (tokens[i] == token) {
                return;
            }
            if (tokens[i] == address(0)) {
                tokens[i] = token;
                return;
            }
        }
        revert("LSPRouter: array full");
    }

    function _addIbgtVaultRewardTokens(address[] memory tokens) internal view {
        address[] memory ibgtRewardedTokens = IbgtVault.tryGetRewardedTokens();        
        for (uint i; i < ibgtRewardedTokens.length; i++) {
            if (IbgtVault.getBalance(ibgtRewardedTokens[i]) == 0) continue;
            _aggregateIfNotExistentWithoutAmounts(tokens, ibgtRewardedTokens[i]);
        }
        // Also add ibgtVault.asset() after rewarded tokens
        _aggregateIfNotExistentWithoutAmounts(tokens, IbgtVault.asset());
    }

    function addWhitelistedSwapper(address _swapRouter, bool status) external onlyOwner {
        _addWhitelistedSwapper(_swapRouter, status);
    }

    function _addWhitelistedSwapper(address _swapRouter, bool status) internal {
        SwappersLib.addWhitelistedSwapper(swapperData,_swapRouter, status);

        emit WhitelistedSwapperUpdated(_swapRouter, status);    }

    function _initArr(address[] memory preferredUnderlyingTokens, address account) private view returns (ILSPRouter.Arr memory arr) {
        arr.prevAmounts = preferredUnderlyingTokens.underlyingAmounts(account);
        arr.receiver = account;
    }

    // Add a function to manage whitelisted callers
    function setWhitelistedCaller(address caller, bool status) external onlyOwner {
        whitelistedCallers[caller] = status;
    }
}