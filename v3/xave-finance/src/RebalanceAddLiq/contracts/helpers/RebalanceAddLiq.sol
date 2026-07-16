pragma experimental ABIEncoderV2;

pragma solidity 0.7.6;
import {FXPool} from '../FXPool.sol';
// import 'forge-std/console.sol';
import {IVault} from '@balancer-labs/v2-vault/contracts/interfaces/IVault.sol';
import {IERC20} from '@balancer-labs/v2-solidity-utils/contracts/openzeppelin/IERC20.sol';
import {BaseToUsdAssimilator} from '../assimilators/BaseToUsdAssimilator.sol';
import {IAssimilator} from '../core/interfaces/IAssimilator.sol';
import {IAsset} from '@balancer-labs/v2-vault/contracts/interfaces/IAsset.sol';
import {ABDKMath64x64} from '../core/lib/ABDKMath64x64.sol';

interface IERC20Detailed is IERC20 {
    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);
}

/**
  tokenALiqWanted: USDC 10_000 (numeraire)
  tokenBLiqWanted: BRLA 10_000 (numeraire)

  10_000 - 40 = 9_960

  estimate swap amount needed
  transfer assets
    oneSideLiqToAdd = tokenALiqWanted - swapAmount
    return oneSideLiqToAdd
  SWAP
  addLiquidity(oneSideLiqToAdd * 2 * 1e18)

  swapAmountNumeraire = 40
  swapAmountRaw = ....
  swapOutAmount ....
  assetIn: USDC
  new balances:
  USDC: 49_960 (numeraire)
  BRLA: 50_040 (numeraire)
  min(bal1, bal2) = 49_960
  addLiquidity(depositNumeraire(49_960*2))
  refund leftover bal1
  refund leftover bal2
 */
contract RebalanceAddLiq {
    using ABDKMath64x64 for int128;
    // balancer vault
    address private immutable vault;
    address private immutable USDC;
    uint256 private constant POOL_RATIO_PERCENT = 0.5 * 10_000;
    // only try and rebalance the pool only within this range
    uint256 private constant RATIO_LOWER_LIMIT = 0.48 * 1e18;
    uint256 private constant RATIO_UPPER_LIMIT = 0.52 * 1e18;

    constructor(address _vault, address _quoteToken) {
        vault = _vault;
        USDC = _quoteToken;
    }

    function viewSwapAddLiq(
        address _fxPoolAddr,
        uint256 addLiqNumeraire18e
    ) external returns (uint256, uint256, uint256) {
        FXPool fxp = FXPool(_fxPoolAddr);
        // calculate swapAmountRaw
        (
            address targetTokenToSwapIn,
            uint256 assetInIndex,
            uint256 assetOutIndex,
            uint256 swapAmountRaw
        ) = _calculateSwapAmount(fxp);

        address assetIn = fxp.derivatives(assetInIndex);
        address assetOut = fxp.derivatives(assetOutIndex);

        uint256 amountLiqToAdd1e18 = _calculateAmountLiqToAdd(
            fxp,
            addLiqNumeraire18e,
            assetIn,
            assetOut,
            assetInIndex,
            assetOutIndex,
            swapAmountRaw
        );

        (uint256 expectedShares, uint256[] memory expectedToBeAdded) = fxp.viewDeposit(amountLiqToAdd1e18);

        // console.log('expectedShares', expectedShares);
        // console.log('expectedToBeAdded[assetInIndex]', expectedToBeAdded[assetInIndex]);
        // console.log('expectedToBeAdded[assetOutIndex]', expectedToBeAdded[assetOutIndex]);

        return (expectedShares, expectedToBeAdded[assetInIndex], expectedToBeAdded[assetOutIndex]);
    }

    /**
     *
     */
    function swapAddLiq(address _fxPoolAddr, uint256 addLiqNumeraire18e, uint256 minSharesRequired) external {
        FXPool fxp = FXPool(_fxPoolAddr);
        bytes32 poolId = fxp.getPoolId();
        (uint256 total, uint256[] memory individual) = fxp.liquidity();
        // console.log('[BEFORE] total', total);
        // console.log('[BEFORE] [0]', individual[0]); // BRLA
        // console.log('[BEFORE] [1]', individual[1]); // USDC

        // console.log('fxpool token[0]', fxp.derivatives(0));
        // console.log('fxpool token[1]', fxp.derivatives(1));
        (IERC20[] memory tokens, uint256[] memory balances, ) = IVault(vault).getPoolTokens(poolId);
        // console.log('tokens[0]', address(tokens[0])); // BRLA
        // console.log('tokens[1]', address(tokens[1])); // USDC
        // console.log('balances[0]', balances[0]); // BRLA
        // console.log('balances[1]', balances[1]); // USDC

        (uint256 assetInIndex, uint256 assetOutIndex, uint256 swapAmountRaw) = _transferSwapAsset(fxp);
        // console.log('assetInIndex', assetInIndex);
        // console.log('assetOutIndex', assetOutIndex);
        // console.log('swapAmountRaw', swapAmountRaw);
        address assetIn = fxp.derivatives(assetInIndex);
        address assetOut = fxp.derivatives(assetOutIndex);
        IERC20(assetIn).approve(vault, type(uint256).max);
        IERC20(assetOut).approve(vault, type(uint256).max);

        if (swapAmountRaw > 0) {
            _swap(
                poolId,
                address(fxp.derivatives(assetInIndex)),
                address(fxp.derivatives(assetOutIndex)),
                swapAmountRaw,
                0 // @TODO pass this from offchain source
            );
        }

        uint256 amountLiqToAdd1e18 = _transferLiqAssets(
            fxp,
            addLiqNumeraire18e,
            assetIn,
            assetOut,
            assetInIndex,
            assetOutIndex,
            swapAmountRaw
        );

        _addLiquidity(poolId, amountLiqToAdd1e18, tokens);

        uint256 sharesReceived = IERC20(_fxPoolAddr).balanceOf(address(this));
        // console.log('sharesReceived', sharesReceived);
        require(sharesReceived >= minSharesRequired, 'minSharesRequired');

        IERC20(_fxPoolAddr).transfer(msg.sender, sharesReceived);

        (uint256 totalAfter, uint256[] memory individualAfter) = fxp.liquidity();
        // console.log('[AFTER] total', totalAfter);
        // console.log('[AFTER] [0]', individualAfter[0]);
        // console.log('[AFTER] [1]', individualAfter[1]);
        // console.log('[RATIO] [0 / total]', (individualAfter[0] * 1e18) / totalAfter);
    }

    function _calculateSwapAmount(
        FXPool fxp
    )
        private
        returns (address targetTokenToSwapIn, uint256 assetInIndex, uint256 assetOutIndex, uint256 swapAmountRaw)
    {
        (uint256 total, uint256[] memory individual) = fxp.liquidity();
        // // console.log('total', total);
        address[] memory tokens = new address[](2);
        tokens[0] = fxp.derivatives(0);
        tokens[1] = fxp.derivatives(1);
        (address quoteTokenAddr, address baseTokenAddr) = tokens[0] == USDC
            ? (address(tokens[0]), address(tokens[1]))
            : (address(tokens[1]), address(tokens[0]));
        uint256 quoteBalNumeraire = tokens[0] == USDC ? individual[0] : individual[1];
        // console.log('quoteBalNumeraire', quoteBalNumeraire);
        uint256 currentQuoteRatio = (quoteBalNumeraire * 1e18) / total;
        // console.log('currentQuoteRatio', currentQuoteRatio);

        if (currentQuoteRatio > RATIO_LOWER_LIMIT * 1e18 && currentQuoteRatio < RATIO_UPPER_LIMIT * 1e18) {
            return (targetTokenToSwapIn, assetInIndex, assetOutIndex, swapAmountRaw);
        }

        uint256 idealLiquidityToAttainRatio = (total * POOL_RATIO_PERCENT) / 10_000;
        // console.log('idealLiquidityToAttainRatio', idealLiquidityToAttainRatio);
        targetTokenToSwapIn = currentQuoteRatio < (POOL_RATIO_PERCENT * 1e18) / 10_000 ? quoteTokenAddr : baseTokenAddr;
        (assetInIndex, assetOutIndex) = targetTokenToSwapIn == tokens[0] ? (0, 1) : (1, 0);

        // console.log('targetTokenToSwapIn', targetTokenToSwapIn);
        uint256 swapAmountNumeraire = currentQuoteRatio < (POOL_RATIO_PERCENT * 1e18) / 10_000
            ? (idealLiquidityToAttainRatio - quoteBalNumeraire)
            : (quoteBalNumeraire - idealLiquidityToAttainRatio);
        // console.log('swapAmountNumeraire', swapAmountNumeraire);

        swapAmountRaw = IAssimilator(fxp.assimilator(targetTokenToSwapIn)).viewRawAmount(
            ABDKMath64x64.fromInt(int256(swapAmountNumeraire / 1e18))
        );
    }

    function _transferSwapAsset(
        FXPool fxp
    ) private returns (uint256 assetInIndex, uint256 assetOutIndex, uint256 swapAmountRaw) {
        address targetTokenToSwapIn;
        (targetTokenToSwapIn, assetInIndex, assetOutIndex, swapAmountRaw) = _calculateSwapAmount(fxp);
        if (swapAmountRaw > 0) {
            IERC20(targetTokenToSwapIn).transferFrom(msg.sender, address(this), swapAmountRaw);
        }
    }

    function _swap(
        bytes32 poolId,
        address assetIn,
        address assetOut,
        uint256 swapAmountRaw,
        uint256 minAmountOut
    ) private returns (uint256) {
        IVault v = IVault(vault);

        // console.log('assetIn', assetIn);
        // console.log('assetOut', assetOut);

        IVault.SingleSwap memory swapParams = IVault.SingleSwap({
            poolId: poolId,
            kind: IVault.SwapKind.GIVEN_IN,
            assetIn: IAsset(assetIn),
            assetOut: IAsset(assetOut),
            amount: swapAmountRaw,
            userData: bytes('0x')
        });

        IVault.FundManagement memory fundsParams = IVault.FundManagement({
            sender: address(this),
            fromInternalBalance: false,
            recipient: payable(address(this)),
            toInternalBalance: false
        });

        uint256 fxAmountOut = v.swap(swapParams, fundsParams, minAmountOut, block.timestamp);

        // console.log('fxAmountOut', fxAmountOut);

        return fxAmountOut;
    }

    function _calculateAmountLiqToAdd(
        FXPool _fxp,
        uint256 _addLiqNumeraire18e,
        address _assetIn,
        address _assetOut,
        uint256 assetInIndex,
        uint256 assetOutIndex,
        uint256 swapAmountRaw
    ) private returns (uint256 amountLiqToAdd1e18) {
        // console.log('assetIn', _assetIn);
        // console.log('assetOut', _assetOut);
        uint256 assetInToTransfer = IAssimilator(_fxp.assimilator(_assetIn)).viewRawAmount(
            ABDKMath64x64.fromInt(int256(_addLiqNumeraire18e / 1e18))
        );
        // console.log('assetInToTransfer', assetInToTransfer);

        uint256 oneSideLiqToAdd = uint256(
            IAssimilator(_fxp.assimilator(_assetIn)).viewNumeraireAmount(assetInToTransfer - swapAmountRaw).toUInt()
        );
        // console.log('oneSideLiqToAdd', oneSideLiqToAdd);

        amountLiqToAdd1e18 = oneSideLiqToAdd * 2 * 1e18;
    }

    function _transferLiqAssets(
        FXPool _fxp,
        uint256 _addLiqNumeraire18e,
        address _assetIn,
        address _assetOut,
        uint256 assetInIndex,
        uint256 assetOutIndex,
        uint256 swapAmountRaw
    ) private returns (uint256 amountLiqToAdd1e18) {
        amountLiqToAdd1e18 = _calculateAmountLiqToAdd(
            _fxp,
            _addLiqNumeraire18e,
            _assetIn,
            _assetOut,
            assetInIndex,
            assetOutIndex,
            swapAmountRaw
        );

        (, uint256[] memory expectedToBeAdded) = _fxp.viewDeposit(amountLiqToAdd1e18);
        IERC20(_assetIn).transferFrom(msg.sender, address(this), expectedToBeAdded[assetInIndex]);
        IERC20(_assetOut).transferFrom(msg.sender, address(this), expectedToBeAdded[assetOutIndex]);

        // console.log('expectedToBeAdded[0]', expectedToBeAdded[0]);
        // console.log('expectedToBeAdded[1]', expectedToBeAdded[1]);
    }

    function _addLiquidity(bytes32 poolId, uint256 depositNumeraire, IERC20[] memory sortedTokens) private {
        uint256[] memory maxAmountsIn = new uint256[](2);
        maxAmountsIn[0] = type(uint256).max;
        maxAmountsIn[1] = type(uint256).max;

        // console.log('balance token 0', sortedTokens[0].balanceOf(address(this)));
        // console.log('balance token 1', sortedTokens[1].balanceOf(address(this)));
        bytes memory userData = abi.encode(depositNumeraire, sortedTokens);
        IVault.JoinPoolRequest memory req = IVault.JoinPoolRequest({
            assets: _asIAsset(sortedTokens),
            maxAmountsIn: maxAmountsIn,
            userData: userData,
            fromInternalBalance: false
        });

        IVault(vault).joinPool(poolId, address(this), address(this), req);

        uint256 balLeft0 = sortedTokens[0].balanceOf(address(this));
        uint256 balLeft1 = sortedTokens[1].balanceOf(address(this));
        // console.log('leftover token[0]', balLeft0);
        // console.log('leftover token[1]', balLeft1);

        if (balLeft0 > 0) {
            sortedTokens[0].transfer(msg.sender, balLeft0);
        }
        if (balLeft1 > 0) {
            sortedTokens[1].transfer(msg.sender, balLeft1);
        }
    }

    // ERC20 helper functions copied from balancer-core-v2 ERC20Helpers.sol
    function _asIAsset(IERC20[] memory addresses) internal pure returns (IAsset[] memory assets) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            assets := addresses
        }
    }
}
