// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {DeleverageRouter, IDenManager, ILSTCollateralVault, IERC20, SafeERC20} from "src/periphery/beraborrow/base/DeleverageRouter.sol";
import {IEverlongALM} from "src/interfaces/core/alm/IEverlongALM.sol";
import {IOBRouter} from "src/interfaces/periphery/beraborrow/IOBRouter.sol";

/**
 * @title EverlongDeleverageRouter
 * @author Everlong Team
 * @notice This contract enables closing and decreasing leveraged den positions using DebtToken's flash loans.
 * @dev Whitelisted to not pay flashloan fees, and whitelisted as periphery contract to manage dens in behalf of the user.
 * @dev Assumes the collateral asset is an Everlong ALM and at least one of the tokens in the pair is NECT
 */
contract EverlongDeleverageRouter is DeleverageRouter {
    using SafeERC20 for IERC20;

    IOBRouter public immutable obRouter = IOBRouter(0xFd88aD4849BA0F729D6fF4bC27Ff948Ab1Ac3dE7);

    constructor(address _borrowerOperations, address _nect, address _collVaultRouter, address _everlongCore) DeleverageRouter(_borrowerOperations, _nect, _collVaultRouter, _everlongCore) {}

    struct DeleverageParams {
        uint256 prevColl;
        uint256 prevDebt;
        uint256 newColl;
        uint256 newDebt;
        uint256 outputQuote;
        uint256 outputMin;
        bytes   pathDefinition;
        address executor;
        uint32  referralCode;
    } 

    function _unwrapToNect(address denManager, address account, uint256 collVaultAmount, RedeemToOnePartialParams memory collVaultParams)
        internal
        override
        returns (uint256 nectReceived)
    {
        IDenManager _denManager = IDenManager(denManager);
        DeleverageParams memory p;
        (p.prevColl, p.prevDebt) = _denManager.getDenCollAndDebt(account);

        (p.outputQuote, p.outputMin, p.pathDefinition, p.executor, p.referralCode) =
            abi.decode(collVaultParams.swapCalldatas[0], (uint256, uint256, bytes, address, uint32));

        /// @dev collVaultParams::swapCalldatas only needs to have one element, to swap the non-nect token of the pair, but we'll pass encoded the 'minToken0Amount' and 'minToken1Amount' as well
        (
            uint256 amountIn,
            uint256 nectBalance,
            address tokenIn
        ) = _unwrapEverlongALM(_denManager, collVaultAmount, collVaultParams.swapCalldatas[1]);

        /// @dev Since we are on Berachain we use the DEX Aggregator OB, since it enables us to dynamically pass the inputAmount
        IOBRouter.swapTokenInfo memory tokenInfo = IOBRouter.swapTokenInfo({
            inputToken: tokenIn,
            inputAmount: amountIn,
            outputToken: address(nect),
            outputQuote: p.outputQuote,
            outputMin: p.outputMin,
            outputReceiver: address(this)
        });

        // Approve router to spend input tokens
        IERC20(tokenIn).safeIncreaseAllowance(address(obRouter), amountIn);
        nectReceived = obRouter.swap(tokenInfo, p.pathDefinition, p.executor, p.referralCode) + nectBalance;

        (uint256 newColl, uint256 newDebt) = _denManager.getDenCollAndDebt(account);

        if (nectReceived < collVaultParams.minTargetTokenAmount) {
            revert InsufficientNectReceived(nectReceived, collVaultParams.minTargetTokenAmount);
        }
        if (newColl != p.prevColl || newDebt != p.prevDebt) {
            revert DebtOrCollateralChanged(newColl, newDebt, p.prevColl, p.prevDebt);
        }
    }

    function _unwrapEverlongALM(
        IDenManager _denManager,
        uint256 collVaultAmount,
        bytes memory payload
    ) internal returns (uint256 amountIn, uint256 nectBalance, address tokenIn) {
        ILSTCollateralVault collVault = ILSTCollateralVault(_denManager.collateralToken());
        IEverlongALM collVaultAsset = IEverlongALM(collVault.asset());

        uint256 prevCollVaultAssetBalance = collVaultAsset.balanceOf(address(this));
        collVault.redeem(collVaultAmount, address(this), address(this));

        uint256 postCollVaultAssetBalance = collVaultAsset.balanceOf(address(this));

        // Search for non-NECT token
        address token0 = collVaultAsset.token0();
        tokenIn = token0 == address(nect) ? collVaultAsset.token1() : token0;

        uint256 prevNectBalance = nect.balanceOf(address(this));
        uint256 prevTokenInBalance = IERC20(tokenIn).balanceOf(address(this));

        (uint256 minToken0Amount, uint256 minToken1Amount) = abi.decode(payload, (uint256, uint256));
        IEverlongALM(collVaultAsset).withdraw(postCollVaultAssetBalance - prevCollVaultAssetBalance, minToken0Amount, minToken1Amount, address(this));

        amountIn = IERC20(tokenIn).balanceOf(address(this)) - prevTokenInBalance;
        nectBalance = nect.balanceOf(address(this)) - prevNectBalance;
    }
}