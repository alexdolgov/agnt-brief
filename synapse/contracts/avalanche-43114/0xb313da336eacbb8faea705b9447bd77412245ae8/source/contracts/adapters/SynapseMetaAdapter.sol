// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.7.0;

import "../interface/IMetaSynapse.sol";
import "../interface/IERC20.sol";
import "../lib/SafeERC20.sol";
import "../lib/SafeMath.sol";
import "../Adapter.sol";

contract SynapseMetaAdapter is Adapter {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    bytes32 public constant id = keccak256("SynapseMetaAdapter");
    uint256 public constant poolFeeCompliment = 9996; // In bips
    uint256 public constant bips = 1e4;
    mapping(address => bool) public isPoolToken;
    mapping(address => uint8) public tokenIndex;
    address public pool;

    constructor(
        string memory _name,
        address _pool,
        uint256 _swapGasEstimate
    ) {
        pool = _pool;
        name = _name;
        _setPoolTokens();
        setSwapGasEstimate(_swapGasEstimate);
    }

    // Mapping indicator which tokens are included in the pool
    function _setPoolTokens() internal {
        // Get stables from pool
        for (uint8 i = 0; true; i++) {
            try IMetaSynapse(pool).getToken(i) returns (IERC20 token) {
                isPoolToken[address(token)] = true;
                tokenIndex[address(token)] = i;
            } catch {
                break;
            }
        }
        // // Get nUSD from this pool
        // address lpToken = IMetaSynapse(pool).metaLPToken();
        // isPoolToken[lpToken] = true;
        // tokenIndex[lpToken] = 4;
    }

    function setAllowances() public override onlyOwner {}

    function _approveIfNeeded(address _tokenIn, uint256 _amount)
        internal
        override
    {
        uint256 allowance = IERC20(_tokenIn).allowance(address(this), pool);
        if (allowance < _amount) {
            IERC20(_tokenIn).safeApprove(pool, UINT_MAX);
        }
    }

    function _query(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut
    ) internal view override returns (uint256) {
        if (
            _amountIn == 0 ||
            _tokenIn == _tokenOut ||
            !isPoolToken[_tokenIn] ||
            !isPoolToken[_tokenOut]
        ) {
            return 0;
        }
        if (tokenIndex[_tokenIn] != 4 && tokenIndex[_tokenOut] != 4) {
            try
                IMetaSynapse(pool).calculateSwap(
                    tokenIndex[_tokenIn],
                    tokenIndex[_tokenOut],
                    _amountIn
                )
            returns (uint256 amountOut) {
                return amountOut.mul(poolFeeCompliment) / bips;
            } catch {
                return 0;
            }
        } else {
            if (tokenIndex[_tokenOut] == 4) {
                uint256[] memory amounts = new uint256[](3);
                amounts[(tokenIndex[_tokenIn])] = _amountIn;
                try IMetaSynapse(pool).calculateTokenAmount(amounts, true) returns (
                    uint256 amountOut
                ) {
                    return amountOut.mul(poolFeeCompliment) / bips;
                } catch {
                    return 0;
                }
            } else if (tokenIndex[_tokenIn] == 4) {
                // remove liquidity
                try
                    IMetaSynapse(pool).calculateRemoveLiquidityOneToken(
                        _amountIn,
                        tokenIndex[_tokenOut]
                    )
                returns (uint256 amountOut) {
                    return amountOut.mul(poolFeeCompliment) / bips;
                } catch {
                    return 0;
                }
            } else {
                return 0;
            }
        }
    }

    function _swap(
        uint256 _amountIn,
        uint256 _amountOut,
        address _tokenIn,
        address _tokenOut,
        address _to
    ) internal override {
        if (tokenIndex[_tokenIn] != 4 && tokenIndex[_tokenOut] != 4) {
            IMetaSynapse(pool).swap(
                tokenIndex[_tokenIn],
                tokenIndex[_tokenOut],
                _amountIn,
                _amountOut,
                block.timestamp
            );
            // Confidently transfer amount-out
            _returnTo(_tokenOut, _amountOut, _to);
        } else {
            // add liquidity
            if (tokenIndex[_tokenOut] == 4) {
                uint256[] memory amounts = new uint256[](3);
                amounts[(tokenIndex[_tokenIn])] = _amountIn;

                IMetaSynapse(pool).addLiquidity(
                    amounts,
                    _amountOut,
                    block.timestamp
                );
                _returnTo(_tokenOut, _amountOut, _to);
            }
            if (tokenIndex[_tokenIn] == 4) {
                // remove liquidity
                IMetaSynapse(pool).removeLiquidityOneToken(
                    _amountIn,
                    tokenIndex[_tokenOut],
                    _amountOut,
                    block.timestamp
                );
                _returnTo(_tokenOut, _amountOut, _to);
            }
        }
    }
}
