// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../tokens/interfaces/IWETH.sol";
import "../libraries/token/SafeERC20.sol";
import "../libraries/utils/Address.sol";
import "../libraries/utils/ReentrancyGuard.sol";
import "../access/Governable.sol";

import "./interfaces/IRouter.sol";
import "./interfaces/IVault.sol";
import "./interfaces/IRewardRouterOrderBook.sol";
import "../core/interfaces/IGlpManager.sol";
import "../staking/interfaces/IRewardTracker.sol";

contract RewardRouterOrderBook is
    IRewardRouterOrderBook,
    ReentrancyGuard,
    Governable
{
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using Address for address payable;

    uint256 public constant PRICE_PRECISION = 1e30;
    uint256 public constant USDG_PRECISION = 1e18;

    uint256 public minExecutionFee;
    address public weth;
    address public router;
    address public glp;
    address public glpManager;
    address public stakedGlpTracker;
    address public feeGlpTracker;

    bool public isInitialized = false;

    mapping(address => bool) public isKeeper;

    mapping(address => uint256) public mintAndStakeGlpRequestIndex;
    mapping(bytes32 => MintAndStakeGlpRequest) public mintAndStakeGlpRequests;
    mapping(address => uint256) public unstakeAndRedeemGlpRequestIndex;
    mapping(bytes32 => UnstakeAndRedeemGlpRequest)
        public unstakeAndRedeemGlpRequests;

    bytes32[] public override mintAndStakeGlpRequestKeys;
    bytes32[] public override unstakeAndRedeemGlpRequestKeys;

    uint256 public override mintAndStakeGlpRequestKeysStart;
    uint256 public override unstakeAndRedeemGlpRequestKeysStart;

    uint256 public maxTimeDelay;
    uint256 public maxBlockDelay;

    uint256 public ethTransferGasLimit = 500 * 1000;

    struct MintAndStakeGlpRequest {
        address account;
        address token;
        uint256 amountIn;
        uint256 minUsdg;
        uint256 minGlp;
        uint256 executionFee;
        bool shouldWrap;
        uint256 blockNumber;
        uint256 blockTime;
    }

    struct UnstakeAndRedeemGlpRequest {
        address account;
        address tokenOut;
        uint256 glpAmount;
        uint256 minOut;
        address receiver;
        uint256 executionFee;
        bool withdrawETH;
        uint256 blockNumber;
        uint256 blockTime;
    }

    event UpdateMinExecutionFee(uint256 minExecutionFee);

    event Initialize(
        address router,
        address weth,
        address glpManager,
        address glp,
        address feeGlpTracker,
        address stakedGlpTracker,
        uint256 minExecutionFee
    );

    event StakeGlp(address indexed account, uint256 amount);
    event UnstakeGlp(address indexed account, uint256 amount);

    event CreateMintAndStakeGlpRequest(
        address indexed account,
        address token,
        uint256 amountIn,
        uint256 minUsdg,
        uint256 minGlp,
        uint256 executionFee,
        bool shouldWrap,
        uint256 index,
        uint256 queueIndex,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 gasPrice
    );

    event CreateUnstakeAndRedeemGlpRequest(
        address indexed account,
        address tokenOut,
        uint256 glpAmount,
        uint256 minOut,
        address receiver,
        uint256 executionFee,
        bool withdrawETH,
        uint256 index,
        uint256 queueIndex,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 gasPrice
    );

    event ExecuteMintAndStakeGlpRequest(
        address indexed account,
        address token,
        uint256 amountIn,
        uint256 minUsdg,
        uint256 minGlp,
        uint256 executionFee,
        bool shouldWrap,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 blockGap,
        uint256 timeGap
    );

    event ExecuteUnstakeAndRedeemGlpRequest(
        address indexed account,
        address tokenOut,
        uint256 glpAmount,
        uint256 minOut,
        address receiver,
        uint256 executionFee,
        bool withdrawETH,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 blockGap,
        uint256 timeGap
    );

    event CancelMintAndStakeGlpRequest(
        address indexed account,
        address token,
        uint256 amountIn,
        uint256 minUsdg,
        uint256 minGlp,
        uint256 executionFee,
        bool shouldWrap,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 blockGap,
        uint256 timeGap
    );

    event CancelUnstakeAndRedeemGlpRequest(
        address indexed account,
        address tokenOut,
        uint256 glpAmount,
        uint256 minOut,
        address receiver,
        uint256 executionFee,
        bool withdrawETH,
        uint256 blockNumber,
        uint256 blockTime,
        uint256 blockGap,
        uint256 timeGap
    );

    event SetDelayValues(uint256 maxBlockDelay, uint256 maxTimeDelay);

    event SetEthTransferGasLimit(uint256 ethTransferGasLimit);

    modifier onlyKeeper() {
        require(isKeeper[msg.sender], "RewardRouterOrderBook: ONLY KEEPER");
        _;
    }

    function initialize(
        address _router,
        address _weth,
        address _glpManager,
        address _glp,
        address _feeGlpTracker,
        address _stakedGlpTracker,
        uint256 _minExecutionFee
    ) external onlyGov {
        require(!isInitialized, "RewardRouterOrderBook: already initialized");
        isInitialized = true;

        router = _router;
        weth = _weth;
        glpManager = _glpManager;
        glp = _glp;
        feeGlpTracker = _feeGlpTracker;
        stakedGlpTracker = _stakedGlpTracker;

        minExecutionFee = _minExecutionFee;

        emit Initialize(
            _router,
            _weth,
            _glpManager,
            _glp,
            _feeGlpTracker,
            _stakedGlpTracker,
            _minExecutionFee
        );
    }

    function setMinExecutionFee(uint256 _minExecutionFee) external onlyKeeper {
        minExecutionFee = _minExecutionFee;
        emit UpdateMinExecutionFee(_minExecutionFee);
    }

    function setKeeper(address _keeper, bool _isActive) external onlyGov {
        isKeeper[_keeper] = _isActive;
    }

    function createMintAndStakeGlpRequest(
        address _token,
        uint256 _amountIn,
        uint256 _minUsdg,
        uint256 _minGlp,
        uint256 _executionFee,
        bool _shouldWrap
    ) external payable nonReentrant {
        // always need this call because of mandatory executionFee user has to transfer in ETH
        _transferInETH();

        require(_amountIn > 0, "RewardRouterOrderBook: zero amountIn");

        require(
            _executionFee >= minExecutionFee,
            "RewardRouterOrderBook: insufficient execution fee"
        );
        if (_shouldWrap) {
            require(
                msg.value == _executionFee.add(_amountIn),
                "RewardRouterOrderBook: incorrect value transferred"
            );
            require(_token == weth, "RewardRouterOrderBook: weth");
        } else {
            require(
                msg.value == _executionFee,
                "RewardRouterOrderBook:incorrect execution fee transferred"
            );
            IRouter(router).pluginTransfer(
                _token,
                msg.sender,
                address(this),
                _amountIn
            );
        }

        _createMintAndStakeGlpRequest(
            msg.sender,
            _token,
            _amountIn,
            _minUsdg,
            _minGlp,
            _executionFee,
            _shouldWrap
        );
    }

    function createUnstakeAndRedeemGlpRequest(
        address _tokenOut,
        uint256 _glpAmount,
        uint256 _minOut,
        address _receiver,
        uint256 _executionFee,
        bool _withdrawETH
    ) external payable nonReentrant returns (bytes32) {
        require(_executionFee >= minExecutionFee, "fee");
        require(msg.value == _executionFee, "val");

        if (_withdrawETH) {
            require(_tokenOut == weth, "RewardRouterOrderBook:withdrawETH");
        }

        _transferInETH();

        return
            _createUnstakeAndRedeemGlpRequest(
                msg.sender,
                _tokenOut,
                _glpAmount,
                _minOut,
                _receiver,
                _executionFee,
                _withdrawETH
            );
    }

    function _createMintAndStakeGlpRequest(
        address _account,
        address _token,
        uint256 _amountIn,
        uint256 _minUsdg,
        uint256 _minGlp,
        uint256 _executionFee,
        bool _shouldWrap
    ) internal returns (bytes32) {
        MintAndStakeGlpRequest memory request = MintAndStakeGlpRequest(
            _account,
            _token,
            _amountIn,
            _minUsdg,
            _minGlp,
            _executionFee,
            _shouldWrap,
            block.number,
            block.timestamp
        );

        (uint256 index, bytes32 requestKey) = _storeMintAndStakeGlpRequest(
            request
        );
        emit CreateMintAndStakeGlpRequest(
            _account,
            _token,
            _amountIn,
            _minUsdg,
            _minGlp,
            _executionFee,
            _shouldWrap,
            index,
            mintAndStakeGlpRequestKeys.length - 1,
            block.number,
            block.timestamp,
            tx.gasprice
        );

        return requestKey;
    }

    function _createUnstakeAndRedeemGlpRequest(
        address _account,
        address _tokenOut,
        uint256 _glpAmount,
        uint256 _minOut,
        address _receiver,
        uint256 _executionFee,
        bool _withdrawETH
    ) internal returns (bytes32) {
        UnstakeAndRedeemGlpRequest memory request = UnstakeAndRedeemGlpRequest(
            _account,
            _tokenOut,
            _glpAmount,
            _minOut,
            _receiver,
            _executionFee,
            _withdrawETH,
            block.number,
            block.timestamp
        );

        (uint256 index, bytes32 requestKey) = _storeUnstakeAndRedeemGlpRequest(
            request
        );
        emit CreateUnstakeAndRedeemGlpRequest(
            _account,
            _tokenOut,
            _glpAmount,
            _minOut,
            _receiver,
            _executionFee,
            _withdrawETH,
            index,
            unstakeAndRedeemGlpRequestKeys.length - 1,
            block.number,
            block.timestamp,
            tx.gasprice
        );

        return requestKey;
    }

    function executeMintAndStakeGlpRequests(
        uint256 _endIndex,
        address payable _executionFeeReceiver
    ) external override onlyKeeper {
        uint256 index = mintAndStakeGlpRequestKeysStart;
        uint256 length = mintAndStakeGlpRequestKeys.length;

        if (index >= length) {
            return;
        }

        if (_endIndex > length) {
            _endIndex = length;
        }

        while (index < _endIndex) {
            bytes32 key = mintAndStakeGlpRequestKeys[index];

            // if the request was executed then delete the key from the array
            // if the request was not executed then break from the loop, this can happen if the
            // minimum number of blocks has not yet passed
            // an error could be thrown if the request is too old or if the slippage is
            // higher than what the user specified, or if there is insufficient liquidity for the position
            // in case an error was thrown, cancel the request
            try
                this.executeMintAndStakeGlpRequest(key, _executionFeeReceiver)
            returns (bool _wasExecuted) {
                if (!_wasExecuted) {
                    break;
                }
            } catch {
                // wrap this call in a try catch to prevent invalid cancels from blocking the loop
                try
                    this.cancelMintAndStakeGlpRequest(
                        key,
                        _executionFeeReceiver
                    )
                returns (bool _wasCancelled) {
                    if (!_wasCancelled) {
                        break;
                    }
                } catch {}
            }

            delete mintAndStakeGlpRequestKeys[index];
            index++;
        }

        mintAndStakeGlpRequestKeysStart = index;
    }

    function executeUnstakeAndRedeemGlpRequests(
        uint256 _endIndex,
        address payable _executionFeeReceiver
    ) external override onlyKeeper {
        uint256 index = unstakeAndRedeemGlpRequestKeysStart;
        uint256 length = unstakeAndRedeemGlpRequestKeys.length;

        if (index >= length) {
            return;
        }

        if (_endIndex > length) {
            _endIndex = length;
        }

        while (index < _endIndex) {
            bytes32 key = unstakeAndRedeemGlpRequestKeys[index];

            // if the request was executed then delete the key from the array
            // if the request was not executed then break from the loop, this can happen if the
            // minimum number of blocks has not yet passed
            // an error could be thrown if the request is too old or if the slippage is
            // higher than what the user specified, or if there is insufficient liquidity for the position
            // in case an error was thrown, cancel the request
            try
                this.executeUnstakeAndRedeemGlpRequest(
                    key,
                    _executionFeeReceiver
                )
            returns (bool _wasExecuted) {
                if (!_wasExecuted) {
                    break;
                }
            } catch {
                // wrap this call in a try catch to prevent invalid cancels from blocking the loop
                try
                    this.cancelUnstakeAndRedeemGlpRequest(
                        key,
                        _executionFeeReceiver
                    )
                returns (bool _wasCancelled) {
                    if (!_wasCancelled) {
                        break;
                    }
                } catch {}
            }

            delete unstakeAndRedeemGlpRequestKeys[index];
            index++;
        }

        unstakeAndRedeemGlpRequestKeysStart = index;
    }

    function executeMintAndStakeGlpRequest(
        bytes32 _key,
        address payable _executionFeeReceiver
    ) public nonReentrant returns (bool) {
        MintAndStakeGlpRequest memory request = mintAndStakeGlpRequests[_key];

        address account = request.account;

        // if the request was already executed or cancelled, return true so that the executeIncreasePositions loop will continue executing the next request
        if (account == address(0)) {
            return true;
        }

        _validateExecution(request.blockNumber, request.blockTime, account);

        delete mintAndStakeGlpRequests[_key];

        // mint
        approve(request.token, glpManager, request.amountIn);

        uint256 glpAmount = IGlpManager(glpManager).addLiquidityForAccount(
            address(this),
            account,
            request.token,
            request.amountIn,
            request.minUsdg,
            request.minGlp
        );

        IRewardTracker(feeGlpTracker).stakeForAccount(
            account,
            account,
            glp,
            glpAmount
        );
        IRewardTracker(stakedGlpTracker).stakeForAccount(
            account,
            account,
            feeGlpTracker,
            glpAmount
        );

        emit StakeGlp(account, glpAmount);

        _transferOutETHWithGasLimitFallbackToWeth(
            request.executionFee,
            _executionFeeReceiver
        );

        emit ExecuteMintAndStakeGlpRequest(
            account,
            request.token,
            request.amountIn,
            request.minUsdg,
            request.minGlp,
            request.executionFee,
            request.shouldWrap,
            request.blockNumber,
            request.blockTime,
            block.number.sub(request.blockNumber),
            block.timestamp.sub(request.blockTime)
        );

        return true;
    }

    function executeUnstakeAndRedeemGlpRequest(
        bytes32 _key,
        address payable _executionFeeReceiver
    ) public nonReentrant returns (bool) {
        UnstakeAndRedeemGlpRequest memory request = unstakeAndRedeemGlpRequests[
            _key
        ];

        address account = request.account;
        // if the request was already executed or cancelled, return true so that the executeUnstakeAndRedeemGlpRequests loop will continue executing the next request
        if (account == address(0)) {
            return true;
        }

        _validateExecution(request.blockNumber, request.blockTime, account);

        delete unstakeAndRedeemGlpRequests[_key];

        IRewardTracker(stakedGlpTracker).unstakeForAccount(
            account,
            feeGlpTracker,
            request.glpAmount,
            account
        );
        IRewardTracker(feeGlpTracker).unstakeForAccount(
            account,
            glp,
            request.glpAmount,
            account
        );

        if (request.withdrawETH) {
            uint256 amountOut = IGlpManager(glpManager)
                .removeLiquidityForAccount(
                    account,
                    request.tokenOut,
                    request.glpAmount,
                    request.minOut,
                    address(this)
                );

            _transferOutETHWithGasLimitFallbackToWeth(
                amountOut,
                payable(request.receiver)
            );
        } else {
            IGlpManager(glpManager).removeLiquidityForAccount(
                account,
                request.tokenOut,
                request.glpAmount,
                request.minOut,
                request.receiver
            );
        }

        emit UnstakeGlp(account, request.glpAmount);

        _transferOutETHWithGasLimitFallbackToWeth(
            request.executionFee,
            _executionFeeReceiver
        );

        emit ExecuteUnstakeAndRedeemGlpRequest(
            account,
            request.tokenOut,
            request.glpAmount,
            request.minOut,
            request.receiver,
            request.executionFee,
            request.withdrawETH,
            request.blockNumber,
            request.blockTime,
            block.number.sub(request.blockNumber),
            block.timestamp.sub(request.blockTime)
        );

        return true;
    }

    function cancelMintAndStakeGlpRequest(
        bytes32 _key,
        address payable _executionFeeReceiver
    ) public nonReentrant returns (bool) {
        MintAndStakeGlpRequest memory request = mintAndStakeGlpRequests[_key];
        // if the request was already executed or cancelled, return true so that the executeIncreasePositions loop will continue executing the next request
        if (request.account == address(0)) {
            return true;
        }

        _validateCancellation(
            request.blockNumber,
            request.blockTime,
            request.account
        );

        delete mintAndStakeGlpRequests[_key];

        if (request.shouldWrap) {
            _transferOutETHWithGasLimitFallbackToWeth(
                request.amountIn,
                payable(request.account)
            );
        } else {
            IERC20(request.token).safeTransfer(
                request.account,
                request.amountIn
            );
        }

        _transferOutETHWithGasLimitFallbackToWeth(
            request.executionFee,
            _executionFeeReceiver
        );

        emit CancelMintAndStakeGlpRequest(
            request.account,
            request.token,
            request.amountIn,
            request.minUsdg,
            request.minGlp,
            request.executionFee,
            request.shouldWrap,
            request.blockNumber,
            request.blockTime,
            block.number.sub(request.blockNumber),
            block.timestamp.sub(request.blockTime)
        );

        return true;
    }

    function cancelUnstakeAndRedeemGlpRequest(
        bytes32 _key,
        address payable _executionFeeReceiver
    ) public nonReentrant returns (bool) {
        UnstakeAndRedeemGlpRequest memory request = unstakeAndRedeemGlpRequests[
            _key
        ];
        // if the request was already executed or cancelled, return true so that the executeIncreasePositions loop will continue executing the next request
        if (request.account == address(0)) {
            return true;
        }

        _validateCancellation(
            request.blockNumber,
            request.blockTime,
            request.account
        );

        delete unstakeAndRedeemGlpRequests[_key];

        _transferOutETHWithGasLimitFallbackToWeth(
            request.executionFee,
            _executionFeeReceiver
        );

        emit CancelUnstakeAndRedeemGlpRequest(
            request.account,
            request.tokenOut,
            request.glpAmount,
            request.minOut,
            request.receiver,
            request.executionFee,
            request.withdrawETH,
            request.blockNumber,
            request.blockTime,
            block.number.sub(request.blockNumber),
            block.timestamp.sub(request.blockTime)
        );

        return true;
    }

    function setDelayValues(
        uint256 _maxBlockDelay,
        uint256 _maxTimeDelay
    ) external onlyGov {
        maxBlockDelay = _maxBlockDelay;
        maxTimeDelay = _maxTimeDelay;

        emit SetDelayValues(_maxBlockDelay, _maxTimeDelay);
    }

    function _validateExecution(
        uint256 _requestBlockNumber,
        uint256 _requestBlockTime,
        address _account
    ) internal view {
        require(
            _requestBlockTime.add(maxTimeDelay) >= block.timestamp,
            "RewardRouterOrderBook: block time expired"
        );

        require(
            _requestBlockNumber.add(maxBlockDelay) >= block.number,
            "RewardRouterOrderBook: block number expired"
        );

        _validateExecutionOrCancellation(
            _requestBlockNumber,
            _requestBlockTime,
            _account
        );
    }

    function _validateCancellation(
        uint256 _requestBlockNumber,
        uint256 _requestBlockTime,
        address _account
    ) internal view {
        _validateExecutionOrCancellation(
            _requestBlockNumber,
            _requestBlockTime,
            _account
        );
    }

    function _validateExecutionOrCancellation(
        uint256 _requestBlockNumber,
        uint256 _requestBlockTime,
        address _account
    ) internal view {
        bool isKeeperCall = msg.sender == address(this) || isKeeper[msg.sender];

        if (!isKeeperCall) {
            revert("403");
        }
    }

    function _transferInETH() private {
        if (msg.value != 0) {
            IWETH(weth).deposit{value: msg.value}();
        }
    }

    function _storeMintAndStakeGlpRequest(
        MintAndStakeGlpRequest memory _request
    ) internal returns (uint256, bytes32) {
        address account = _request.account;
        uint256 index = mintAndStakeGlpRequestIndex[account].add(1);
        mintAndStakeGlpRequestIndex[account] = index;
        bytes32 key = getRequestKey(account, index);

        mintAndStakeGlpRequests[key] = _request;
        mintAndStakeGlpRequestKeys.push(key);

        return (index, key);
    }

    function _storeUnstakeAndRedeemGlpRequest(
        UnstakeAndRedeemGlpRequest memory _request
    ) internal returns (uint256, bytes32) {
        address account = _request.account;
        uint256 index = unstakeAndRedeemGlpRequestIndex[account].add(1);
        unstakeAndRedeemGlpRequestIndex[account] = index;
        bytes32 key = getRequestKey(account, index);

        unstakeAndRedeemGlpRequests[key] = _request;
        unstakeAndRedeemGlpRequestKeys.push(key);

        return (index, key);
    }

    function getRequestKey(
        address _account,
        uint256 _index
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_account, _index));
    }

    function _transferOutETHWithGasLimitFallbackToWeth(
        uint256 _amountOut,
        address payable _receiver
    ) internal {
        IWETH _weth = IWETH(weth);
        _weth.withdraw(_amountOut);

        (bool success /* bytes memory data */, ) = _receiver.call{
            value: _amountOut,
            gas: ethTransferGasLimit
        }("");

        if (success) {
            return;
        }

        // if the transfer failed, re-wrap the token and send it to the receiver
        _weth.deposit{value: _amountOut}();
        _weth.transfer(address(_receiver), _amountOut);
    }

    function setEthTransferGasLimit(
        uint256 _ethTransferGasLimit
    ) external onlyGov {
        ethTransferGasLimit = _ethTransferGasLimit;
        emit SetEthTransferGasLimit(_ethTransferGasLimit);
    }

    function approve(
        address _token,
        address _spender,
        uint256 _amount
    ) private {
        IERC20(_token).approve(_spender, _amount);
    }

    // to help users who accidentally send their tokens to this contract
    function withdrawToken(
        address _token,
        address _account,
        uint256 _amount
    ) external onlyGov {
        IERC20(_token).transfer(_account, _amount);
    }

    function getRequestQueueLengths()
        external
        view
        override
        returns (uint256, uint256, uint256, uint256)
    {
        return (
            mintAndStakeGlpRequestKeysStart,
            mintAndStakeGlpRequestKeys.length,
            unstakeAndRedeemGlpRequestKeysStart,
            unstakeAndRedeemGlpRequestKeys.length
        );
    }

    receive() external payable {
        require(msg.sender == weth, "invalid sender");
    }
}
