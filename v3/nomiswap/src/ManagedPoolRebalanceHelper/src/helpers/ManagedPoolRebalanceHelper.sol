// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.23;

import {IManagedPool} from '@balancer-labs/v2-interfaces/contracts/pool-utils/IManagedPool.sol';
import {IVault, IERC20} from '@balancer-labs/v2-interfaces/contracts/vault/IVault.sol';
import {SafeERC20, IERC20 as SIERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IBalancer} from "../interfaces/IBalancer.sol";
import {IBalancerPoolToken} from "../interfaces/balancer/IBalancerPoolToken.sol";

interface ISwapExecutor {
    function executeSwaps(IBalancer.SwapInfo[] calldata swaps) external;
}

contract ManagedPoolRebalanceHelper is AccessManagedUpgradeable, UUPSUpgradeable {

    using SafeERC20 for SIERC20;

    uint public rebalanceCooldownBlocks = 0;
    uint public maxBalanceDeviation;
    uint public maxRebalanceSlippage;
    uint public maxInitialTokenWeight;

    ISwapExecutor public immutable SWAP_EXECUTOR;

    error Expired(uint deadline);

    modifier _deadline(uint32 deadline) {
        if (deadline < block.timestamp) {
            revert Expired(deadline);
        }
        _;
    }

    constructor (address swapExecutor) {
        SWAP_EXECUTOR = ISwapExecutor(swapExecutor);
        _disableInitializers();
    }

    function initialize(
        address _authority, 
        uint _rebalanceCooldownBlocks,
        uint _maxBalanceDeviation,
        uint _maxRebalanceSlippage,
        uint _maxInitialTokenWeight) public initializer {
        __AccessManaged_init(_authority);

        rebalanceCooldownBlocks = _rebalanceCooldownBlocks;
        maxBalanceDeviation = _maxBalanceDeviation;
        maxRebalanceSlippage = _maxRebalanceSlippage;
        maxInitialTokenWeight = _maxInitialTokenWeight;
    }

    function _authorizeUpgrade(address newImplementation) internal restricted override {
    }

    function setParams(
        uint _rebalanceCooldownBlocks,
        uint _maxBalanceDeviation,
        uint _maxRebalanceSlippage,
        uint _maxInitialTokenWeight
    ) external restricted {
        rebalanceCooldownBlocks = _rebalanceCooldownBlocks;
        maxBalanceDeviation = _maxBalanceDeviation;
        maxRebalanceSlippage = _maxRebalanceSlippage;
        maxInitialTokenWeight = _maxInitialTokenWeight;
    }

    function addToken(
        IManagedPool pool,
        address token,
        uint256 weight,
        uint256 amount
    ) external restricted {
        SIERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        pool.addToken({
            tokenToAdd: IERC20(token),
            assetManager: address(this),
            tokenToAddNormalizedWeight: weight,
            mintAmount: 0,
            recipient: msg.sender
        });

        IVault vault = IVault(IBalancerPoolToken(address(pool)).getVault());
        SIERC20(address(token)).forceApprove(address(vault), amount);
        IVault.PoolBalanceOp[] memory op = new IVault.PoolBalanceOp[](1);
        bytes32 poolId = pool.getPoolId();
        op[0] = IVault.PoolBalanceOp({
            kind: IVault.PoolBalanceOpKind.UPDATE,
            poolId: poolId,
            token: IERC20(token),
            amount: amount
        });
        vault.managePoolBalance(op);
        op[0] = IVault.PoolBalanceOp({
            kind: IVault.PoolBalanceOpKind.DEPOSIT,
            poolId: poolId,
            token: IERC20(token),
            amount: amount
        });
        vault.managePoolBalance(op);
    }

    function rebalance(
        IManagedPool pool,
        uint[] calldata weights,
        IBalancer.SwapInfo[] calldata swaps,
        uint32 deadline
    ) external restricted _deadline(deadline) {
        _rebalance(pool, weights, swaps);
    }

    function _rebalance(
        IManagedPool pool,
        uint[] calldata weights,
        IBalancer.SwapInfo[] calldata swaps
    ) private {
        IERC20[] memory tokens;
        uint256[] memory origBalances;
        IVault vault = IVault(IBalancerPoolToken(address(pool)).getVault());
        bytes32 poolId = pool.getPoolId();
        {
            uint256 lastChangeBlock;
            (tokens, origBalances, lastChangeBlock) = vault.getPoolTokens(poolId);
            (tokens, origBalances) = dropBpt(tokens, origBalances);
            require(lastChangeBlock + rebalanceCooldownBlocks <= block.number, "TIME");
        }
        uint256[] memory origWeights = pool.getNormalizedWeights();

        IVault.PoolBalanceOp[] memory withdrawalOps = _withdraw(
            vault,
            poolId,
            tokens,
            weights,
            origWeights,
            origBalances
        );

        _makeSwaps(withdrawalOps, swaps);
        _deposit(vault, poolId, tokens);
        _verifyState(vault, poolId, origBalances, origWeights, weights);
        _updateWeights(pool, tokens, weights);

    }

    function _getPool(IVault vault, bytes32 poolId) private view returns (IManagedPool pool) {
        (address poolAddr, ) = vault.getPool(poolId);
        pool = IManagedPool(poolAddr);
    }

    function _updateWeights(IManagedPool pool, IERC20[] memory tokens, uint256[] memory weights) private {
        uint nonZeroWeights;

        for (uint i = 0; i < tokens.length; ++i) {
            if (weights[i] == 0) {
                pool.removeToken({
                    tokenToRemove: tokens[i],
                    burnAmount: 0,
                    sender: address(this)
                });
            } else {
                nonZeroWeights++;
            }
        }
        IERC20[] memory newTokens = new IERC20[](nonZeroWeights);
        uint[] memory newWeights = new uint[](nonZeroWeights);

        uint idx;
        for (uint i = 0; i < tokens.length; ++i) {
            if (weights[i] != 0) {
                newTokens[idx] = tokens[i];
                newWeights[idx] = weights[i];
                idx++;
            }
        }

        pool.updateWeightsGradually(
            block.timestamp,
            block.timestamp,
            newTokens,
            newWeights
        );
    }

    function _withdraw(
        IVault vault,
        bytes32 poolId,
        IERC20[] memory tokens,
        uint256[] calldata weights,
        uint256[] memory origWeights,
        uint256[] memory origBalances
    )
        private
        returns (IVault.PoolBalanceOp[] memory withdrawalOps) {

        uint count = 0;
        for (uint i = 0; i < tokens.length; ++i) {
            if (weights[i] < origWeights[i]) {
                ++count;
            }
        }
        uint index = 0;
        withdrawalOps = new IVault.PoolBalanceOp[](count);
        IVault.PoolBalanceOp[] memory updateOps = new IVault.PoolBalanceOp[](count);

        for (uint i = 0; i < tokens.length; ++i) {
            if (weights[i] < origWeights[i]) {

                uint withdrawAmount = origBalances[i] * (origWeights[i] - weights[i]) / origWeights[i];

                withdrawalOps[index] = IVault.PoolBalanceOp({
                    kind: IVault.PoolBalanceOpKind.WITHDRAW,
                    poolId: poolId,
                    token: IERC20(tokens[i]),
                    amount: withdrawAmount
                });
                updateOps[index] = IVault.PoolBalanceOp({
                    kind: IVault.PoolBalanceOpKind.UPDATE,
                    poolId: poolId,
                    token: IERC20(tokens[i]),
                    amount: 0
                });
                ++index;
            }
        }
        vault.managePoolBalance(withdrawalOps);
        vault.managePoolBalance(updateOps);
    }

    function _makeSwaps(IVault.PoolBalanceOp[] memory withdrawalOps, IBalancer.SwapInfo[] calldata swaps) private {
        for (uint i = 0; i < withdrawalOps.length; ++i) {
            IVault.PoolBalanceOp memory op = withdrawalOps[i];
            SIERC20(address(op.token)).safeTransfer(address(SWAP_EXECUTOR), op.amount);
        }
        SWAP_EXECUTOR.executeSwaps(swaps);
    }

    function _deposit(
        IVault vault,
        bytes32 poolId,
        IERC20[] memory tokens
    )
        private
    {
        (uint[] memory balances, uint balancesCount) = _getBalances(tokens);

        IVault.PoolBalanceOp[] memory updateOps = new IVault.PoolBalanceOp[](balancesCount);
        IVault.PoolBalanceOp[] memory depositOps = new IVault.PoolBalanceOp[](balancesCount);
        uint depositOpsIdx = 0;

        for (uint i = 0; i < tokens.length; ++i) {
            IERC20 token = tokens[i];
            uint balance = balances[i];
            if (balance > 0) {
                SIERC20(address(token)).forceApprove(address(vault), balance);
                updateOps[depositOpsIdx] = IVault.PoolBalanceOp({
                    kind: IVault.PoolBalanceOpKind.UPDATE,
                    poolId: poolId,
                    token: token,
                    amount: balance
                });
                depositOps[depositOpsIdx] = IVault.PoolBalanceOp({
                    kind: IVault.PoolBalanceOpKind.DEPOSIT,
                    poolId: poolId,
                    token: token,
                    amount: balance
                });
                depositOpsIdx++;
            }
        }

        vault.managePoolBalance(updateOps);
        vault.managePoolBalance(depositOps);
    }

    function _getBalances(IERC20[] memory tokens) private view returns (uint[] memory balances, uint count) {
        balances = new uint[](tokens.length);
        for (uint i = 0; i < tokens.length; ++i) {
            balances[i] = IERC20(tokens[i]).balanceOf(address(this));
            if (balances[i] > 0) {
                ++count;
            }
        }
    }

    function _verifyState(
        IVault vault,
        bytes32 poolId,
        uint256[] memory origBalances,
        uint256[] memory origWeights,
        uint256[] calldata newWeights) private view {
        (IERC20[] memory pt, uint256[] memory pb,) = vault.getPoolTokens(poolId);
        (, uint256[] memory newBalances) = dropBpt(pt, pb);

        uint totalValue;
        for(uint i = 0; i < origBalances.length; ++i) {
            totalValue += newBalances[i] * origWeights[i]/origBalances[i];

            uint absWeightedBalanceDiff = absDiff(newBalances[i] * origWeights[i], origBalances[i] * newWeights[i]);
            require(absWeightedBalanceDiff <= maxBalanceDeviation * origWeights[i] * newBalances[i] / 1E18, "RATE1");
            require(absWeightedBalanceDiff <= maxBalanceDeviation * origBalances[i] * newWeights[i] / 1E18, "RATE2");
        }

        require(1E18 <= totalValue + maxRebalanceSlippage, "SLIPPAGE");
    }

    function absDiff(uint x, uint y) pure private returns (uint) {
        return x >= y ? x - y : y - x;
    }

    function dropBpt(IERC20[] memory registeredTokens, uint256[] memory registeredBalances)
    internal
    pure
    returns (IERC20[] memory tokens, uint256[] memory balances)
    {
        assembly {
        // See dropBptFromTokens for a detailed explanation of how this works
            mstore(add(registeredTokens, 32), sub(mload(registeredTokens), 1))
            tokens := add(registeredTokens, 32)

            mstore(add(registeredBalances, 32), sub(mload(registeredBalances), 1))
            balances := add(registeredBalances, 32)
        }
    }

}