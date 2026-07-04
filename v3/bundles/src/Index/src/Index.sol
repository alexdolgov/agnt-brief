// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {console} from "forge-std/console.sol";
import {ABDKMath64x64} from "src/utils/ABDKMath64x64.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from
    "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from
    "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IIndex} from "src/interfaces/IIndex.sol";
import {IIndexCallee} from "src/interfaces/IIndexCallee.sol";
import {IBurnableToken} from "src/interfaces/IBurnableToken.sol";

/// @title Index - A contract for managing a weighted token index
/// @notice Manages a weighted token index
contract Index is ERC20, Ownable, ReentrancyGuard, IIndex {
    using ABDKMath64x64 for int128;
    using SafeERC20 for IERC20;

    // CONSTANTS
    /// @notice Minimum weight for a token in the index (1 ether)
    uint256 public constant MIN_WEIGHT = 1 ether;
    /// @notice Percentage of reserve for the fee token (5%)
    uint256 public constant MIN_FEE_TOKEN_WEIGHT = 2.5 ether;
    /// @notice Minimum transition period for weight changes (7 days)
    uint256 public constant MIN_DELAY_TRANSITION_PERIOD = 1 weeks;
    /// @notice Maximum transition period for weight changes (180 days)
    uint256 public constant MAX_TRANSITION_PERIOD = 180 days;

    // STATES VARIABLES
    /// @dev Struct storing the current fee transition settings
    Transition private feeSettings;
    /// @dev List of all tokens included in the index, Protocol token is at index 0
    address[] private tokens;

    /// @inheritdoc IIndex
    uint256 public reserve;

    /// @inheritdoc IIndex
    uint8 public mintAndBurnFee;
    /// @inheritdoc IIndex
    uint8 public managerShareFee;

    /// @inheritdoc IIndex
    uint16 public nonce;
    /// @inheritdoc IIndex
    uint40 public updateTimelock;
    /// @inheritdoc IIndex
    bytes32 public hash;

    /// @notice Whether rebalancing functions are locked
    bool public isRebalancingLocked;

    /// @notice Mapping of token addresses to their weights structs
    mapping(address => Transition) public weights;

    /// @notice Restricts access to the owner or when the contract has no owner
    modifier ownerOrNotOwned() {
        if (msg.sender != owner() && owner() != address(0)) {
            revert Index__Unauthorized();
        }
        _;
    }

    /// @notice Ensures rebalancing is not locked
    modifier isNotLocked() {
        if (isRebalancingLocked) {
            revert Index__RebalancingLocked();
        }
        _;
    }

    /// @notice Initializes a weighted token index
    /// @param _sender Address of the deployer, set as the initial owner
    /// @param _name Name of the ERC20 token
    /// @param _symbol Symbol of the ERC20 token
    /// @param _swapFee Final swap fee for the index
    /// @param _mintAndBurnFee Fee for minting and burning operations
    /// @param _managerShareFee Fee share for the manager
    /// @param _tokens Array of token addresses in the index
    /// @param _weights Array of weights for the tokens
    /// @param _initialSupply Initial supply of the index (no decimals)
    constructor(
        address _sender,
        string memory _name,
        string memory _symbol,
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        address[] memory _tokens,
        uint256[] memory _weights,
        uint256 _initialSupply // 0 to 100_000_000, enforced in Factory
    ) Ownable(_sender) ERC20(_name, _symbol) {
        _setFeeUpdatePeriod(20000, _swapFee, MIN_DELAY_TRANSITION_PERIOD);

        mintAndBurnFee = _mintAndBurnFee;
        managerShareFee = _managerShareFee;

        for (uint256 i; i < _tokens.length; ++i) {
            tokens.push(_tokens[i]);
            weights[_tokens[i]] = Transition({
                startValue: 0,
                endValue: _weights[i],
                startTime: 0,
                endTime: 0
            });
        }

        _mint(_sender, _initialSupply * 1 ether);
    }

    // EXTERNAL FUNCTIONS
    /// @inheritdoc IIndex
    function mint(uint256 _amount, uint256[] memory _maxAmountsIn) external {
        mint(_amount, _maxAmountsIn, msg.sender);
    }

    /// @inheritdoc IIndex
    function burn(uint256 _amount, uint256[] memory _minAmountsOut) external {
        burn(_amount, _minAmountsOut, msg.sender);
    }

    /// @inheritdoc IIndex
    function rebalanceProtocolTokenOut(
        uint256 _amountOut,
        uint256 _fee,
        address _tokenIn,
        address _to,
        bytes calldata _data
    ) external nonReentrant isNotLocked {
        if (_tokenIn == tokens[0]) revert Index__SameToken();
        if (_fee < _amountOut * swapFee() / 1000) {
            revert Index__InsufficientFee();
        }

        uint256 balanceInBefore = getBalance(_tokenIn);
        uint256 balanceOutBefore = getBalance(tokens[0]);

        IERC20(tokens[0]).approve(address(_to), _amountOut);
        IIndexCallee(_to).execute(_data);
        IERC20(tokens[0]).approve(address(_to), 0);
        uint256 balanceIn = getBalance(_tokenIn);

        _ensureReservesAfterRebalance(
            balanceInBefore,
            balanceOutBefore,
            balanceIn,
            balanceOutBefore - _amountOut - _fee,
            _tokenIn,
            tokens[0]
        );

        reserve += _fee * 15 / 100;

        emit Rebalanced(
            _tokenIn, balanceIn - balanceInBefore, tokens[0], _amountOut, _fee
        );
    }

    /// @inheritdoc IIndex
    function rebalanceProtocolTokenIn(
        address _tokenOut,
        uint256 _amountOut,
        address _to,
        bytes calldata _data
    ) external nonReentrant isNotLocked {
        if (_tokenOut == tokens[0]) revert Index__SameToken();

        uint256 balanceInBefore = getBalance(tokens[0]);
        uint256 balanceOutBefore = getBalance(_tokenOut);

        IERC20(_tokenOut).approve(address(_to), _amountOut);
        IIndexCallee(_to).execute(_data);
        IERC20(_tokenOut).approve(address(_to), 0);

        uint256 balanceIn = getBalance(tokens[0]);
        uint256 deltaIn = balanceIn - balanceInBefore;
        uint256 fee = Math.mulDiv(deltaIn, swapFee(), swapFee() + 1000);

        _ensureReservesAfterRebalance(
            balanceInBefore,
            balanceOutBefore,
            balanceIn - fee,
            balanceOutBefore - _amountOut,
            tokens[0],
            _tokenOut
        );

        emit Rebalanced(tokens[0], deltaIn - fee, _tokenOut, _amountOut, fee);
    }

    /// @inheritdoc IIndex
    function rebalance(
        address _tokenOut,
        uint256 _amountOut,
        address _tokenIn,
        address _to,
        bytes calldata _data
    ) external nonReentrant isNotLocked {
        if (_tokenOut == _tokenIn) revert Index__SameToken();

        uint256 balanceInBefore = getBalance(_tokenIn);
        uint256 balanceOutBefore = getBalance(_tokenOut);
        uint256 balanceProtocolToken = getBalance(tokens[0]);

        IERC20(_tokenOut).approve(address(_to), _amountOut);
        IIndexCallee(_to).execute(_data);
        IERC20(_tokenOut).approve(address(_to), 0);

        uint256 balanceIn = getBalance(_tokenIn);
        _ensureReservesAfterRebalance(
            balanceInBefore,
            balanceOutBefore,
            balanceIn,
            balanceOutBefore - _amountOut,
            _tokenIn,
            _tokenOut
        );

        uint256 fee = getBalance(tokens[0]) - balanceProtocolToken;
        uint256 weightFeeEff =
            (getCurrentWeight(tokens[0]) * (1000 + swapFee()));
        uint256 minFee = (
            (balanceIn - balanceInBefore) * balanceProtocolToken
                * getCurrentWeight(_tokenIn) * swapFee()
        ) / (balanceInBefore * weightFeeEff);

        if (fee < minFee) revert Index__InsufficientFee();

        emit Rebalanced(
            _tokenIn, balanceIn - balanceInBefore, _tokenOut, _amountOut, fee
        );
    }

    /// @inheritdoc IIndex
    function updateAllSettings(
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        uint32 _delay,
        uint256[] memory _newWeights,
        uint256 _transitionPeriod
    ) external onlyOwner {
        _requestSettingsUpdate(
            _swapFee,
            _mintAndBurnFee,
            _managerShareFee,
            _delay,
            _newWeights,
            _transitionPeriod
        );
    }

    /// @inheritdoc IIndex
    function updateFees(
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        uint32 _delay
    ) external onlyOwner {
        uint256[] memory emptyWeights = new uint256[](0);
        _requestSettingsUpdate(
            _swapFee, _mintAndBurnFee, _managerShareFee, _delay, emptyWeights, 0
        );
    }

    /// @inheritdoc IIndex
    function updateWeights(
        uint32 _delay,
        uint256[] memory _newWeights,
        uint256 _transitionPeriod
    ) external onlyOwner {
        _requestSettingsUpdate(
            feeSettings.endValue,
            mintAndBurnFee,
            managerShareFee,
            _delay,
            _newWeights,
            _transitionPeriod
        );
    }

    /// @inheritdoc IIndex
    function executeSettingsUpdate(
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        uint256[] memory _newWeights,
        uint256 _transitionPeriod
    ) external onlyOwner {
        if (block.timestamp < updateTimelock) revert Index__DelayNotPassed();

        if (
            keccak256(
                abi.encode(
                    nonce,
                    _swapFee,
                    _mintAndBurnFee,
                    _managerShareFee,
                    _newWeights,
                    _transitionPeriod
                )
            ) != hash
        ) revert Index__InvalidHash();

        _processSettingsUpdate(
            _swapFee,
            _mintAndBurnFee,
            _managerShareFee,
            _newWeights,
            _transitionPeriod
        );

        hash = bytes32(0);
        updateTimelock = 0;
    }

    /// @inheritdoc IIndex
    function claimReserve(address _to) external onlyOwner {
        uint256 toTransfer = reserve / 3;
        reserve -= toTransfer;
        burnReserve();
        address recipient = _to == address(0) ? owner() : _to;
        SafeERC20.safeTransfer(IERC20(tokens[0]), recipient, toTransfer);
        emit ReserveClaimed(recipient, toTransfer);
    }

    /// @inheritdoc IIndex
    function getTokens() external view returns (address[] memory _tokens) {
        _tokens = tokens;
    }

    /// @inheritdoc IIndex
    function getFeeSettings() external view returns (Transition memory) {
        return feeSettings;
    }

    /// @inheritdoc IIndex
    function getTokenWeightSettings(address token)
        external
        view
        returns (Transition memory)
    {
        return weights[token];
    }

    /// PUBLIC FUNCTIONS
    /// @inheritdoc IIndex
    function mint(uint256 _amount, uint256[] memory _maxAmountsIn, address _to)
        public
        nonReentrant
    {
        if (_to == address(0)) revert Index__ZeroAddress();

        uint256 amountWithFee = _amount + (_amount * mintAndBurnFee / 10000);
        for (uint256 i = 0; i < tokens.length;) {
            uint256 tokenBalance = getBalance(tokens[i]);
            uint256 tokenAmountIn =
                (amountWithFee * tokenBalance) / totalSupply();
            if (tokenAmountIn < 1000) revert Index__MathApprox();
            if (tokenAmountIn > _maxAmountsIn[i]) revert Index__LimitIn();
            _maxAmountsIn[i] = tokenAmountIn;
            SafeERC20.safeTransferFrom(
                IERC20(tokens[i]), msg.sender, address(this), tokenAmountIn
            );
            unchecked {
                ++i;
            }
        }

        _mint(_to, _amount);

        uint256 managerFeeAmount =
            (_amount * mintAndBurnFee * managerShareFee) / 10_000_000;
        if (managerFeeAmount > 0) {
            _mint(owner(), managerFeeAmount);
            emit Mint(_to, _amount, managerFeeAmount, _maxAmountsIn);
        } else {
            emit Mint(_to, _amount, 0, _maxAmountsIn);
        }
    }

    /// @inheritdoc IIndex
    function burn(uint256 _amount, uint256[] memory _minAmountsOut, address _to)
        public
        nonReentrant
    {
        if (_to == address(0)) revert Index__ZeroAddress();

        uint256 amountAfterFee = _amount - (_amount * mintAndBurnFee / 10000);

        for (uint256 i = 0; i < tokens.length;) {
            uint256 tokenBalance = getBalance(tokens[i]);
            uint256 tokenAmountOut =
                (amountAfterFee * tokenBalance) / totalSupply();
            if (tokenAmountOut < _minAmountsOut[i]) revert Index__LimitOut();
            _minAmountsOut[i] = tokenAmountOut;
            SafeERC20.safeTransfer(IERC20(tokens[i]), _to, tokenAmountOut);
            unchecked {
                ++i;
            }
        }

        _burn(msg.sender, _amount);

        uint256 managerFeeAmount =
            (_amount * mintAndBurnFee * managerShareFee) / 10_000_000;
        if (managerFeeAmount > 0) {
            _mint(owner(), managerFeeAmount);
            emit Burn(msg.sender, _amount, managerFeeAmount, _minAmountsOut);
        } else {
            emit Burn(msg.sender, _amount, 0, _minAmountsOut);
        }
    }

    /// @inheritdoc IIndex
    function burnReserve() public ownerOrNotOwned {
        uint256 reserveBefore = reserve;
        reserve = 0;
        emit ReserveBurned(reserveBefore);
        IBurnableToken(tokens[0]).burn(reserveBefore);
    }

    /// @inheritdoc Ownable
    function renounceOwnership() public override onlyOwner {
        managerShareFee = 0;
        super.renounceOwnership();
    }

    /// @inheritdoc IIndex
    function swapFee() public view returns (uint256) {
        return _linearInterpolation(feeSettings);
    }

    /// @inheritdoc IIndex
    function getCurrentWeight(address _token) public view returns (uint256) {
        return _linearInterpolation(weights[_token]);
    }

    /// @inheritdoc IIndex
    function getBalance(address _token)
        public
        view
        returns (uint256 _balance)
    {
        if (_token == tokens[0]) {
            _balance = IERC20(_token).balanceOf(address(this)) - reserve;
        } else {
            _balance = IERC20(_token).balanceOf(address(this));
        }
    }

    // INTERNAL FUNCTIONS
    /// @notice Configures a linear fee transition period for the index
    /// @param _initialFee Initial fee at the start of the transition
    /// @param _finalFee Final fee at the end of the transition
    /// @param _duration Duration of the fee transition period
    function _setFeeUpdatePeriod(
        uint256 _initialFee,
        uint256 _finalFee,
        uint256 _duration
    ) internal {
        feeSettings = Transition({
            startValue: _initialFee,
            endValue: _finalFee,
            startTime: block.timestamp,
            endTime: block.timestamp + _duration
        });
    }

    function _linearInterpolation(Transition memory transition)
        internal
        view
        returns (uint256)
    {
        if (block.timestamp >= transition.endTime) {
            return transition.endValue;
        }

        // Handle both increasing and decreasing scenarios
        if (transition.startValue > transition.endValue) {
            // Value is decreasing over time
            return transition.startValue
                - (
                    (transition.startValue - transition.endValue)
                        * (block.timestamp - transition.startTime)
                ) / (transition.endTime - transition.startTime);
        } else {
            // Value is increasing or constant over time
            return transition.startValue
                + (
                    (transition.endValue - transition.startValue)
                        * (block.timestamp - transition.startTime)
                ) / (transition.endTime - transition.startTime);
        }
    }

    /// @notice Requests a settings update with a timelock delay
    /// @param _swapFee New swap fee for the index
    /// @param _mintAndBurnFee New fee for minting and burning operations
    /// @param _managerShareFee New fee share for the manager
    /// @param _delay Timelock delay before the update can be executed
    /// @param _newWeights New weights for the tokens
    /// @param _transitionPeriod Duration of the weight transition period
    function _requestSettingsUpdate(
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        uint32 _delay,
        uint256[] memory _newWeights,
        uint256 _transitionPeriod
    ) internal {
        if (_delay < MIN_DELAY_TRANSITION_PERIOD) revert Index__DelayTooShort();

        if (_swapFee < 10 || _swapFee > 2000) revert Index__FeeOutOfRange();

        if (_newWeights.length > 0) {
            if (_newWeights[0] < MIN_FEE_TOKEN_WEIGHT) {
                revert Index__InvalidProtocolTokenWeight();
            }

            if (
                _transitionPeriod < MIN_DELAY_TRANSITION_PERIOD
                    || _transitionPeriod > MAX_TRANSITION_PERIOD
            ) {
                revert Index__TransitionOutOfRange();
            }

            if (_newWeights.length != tokens.length) {
                revert Index__InvalidWeightsArray();
            }

            uint256 addedWeight = 0;
            uint256 removedWeight = 0;

            uint256 length = tokens.length;
            for (uint256 i = 0; i < length;) {
                uint256 newWeight = _newWeights[i];
                if (newWeight < MIN_WEIGHT) {
                    revert Index__WeightOutOfRange();
                }

                Transition memory tokenWeight = weights[tokens[i]];
                if (newWeight > tokenWeight.endValue) {
                    addedWeight += newWeight - tokenWeight.endValue;
                } else if (newWeight < tokenWeight.endValue) {
                    removedWeight += tokenWeight.endValue - newWeight;
                }
                unchecked {
                    ++i;
                }
            }

            if (addedWeight != removedWeight) {
                revert Index__InvalidTotalWeight();
            }
        } else if (_transitionPeriod != 0) {
            revert Index__InvalidTransitionPeriod();
        }

        nonce++;
        hash = keccak256(
            abi.encode(
                nonce,
                _swapFee,
                _mintAndBurnFee,
                _managerShareFee,
                _newWeights,
                _transitionPeriod
            )
        );

        updateTimelock = uint40(block.timestamp + _delay);

        emit SettingsUpdateRequested(
            nonce,
            hash,
            updateTimelock,
            _swapFee,
            _mintAndBurnFee,
            _managerShareFee,
            _newWeights,
            _transitionPeriod
        );
    }

    /// @notice Processes a settings update after timelock verification
    /// @param _swapFee New swap fee
    /// @param _mintAndBurnFee New mint and burn fee
    /// @param _managerShareFee New manager share fee
    /// @param _newWeights New weights for the tokens
    /// @param _transitionPeriod Duration of the weight transition period
    function _processSettingsUpdate(
        uint256 _swapFee,
        uint8 _mintAndBurnFee,
        uint8 _managerShareFee,
        uint256[] memory _newWeights,
        uint256 _transitionPeriod
    ) internal {
        uint256 currentSwapFee = swapFee();

        if (_swapFee < currentSwapFee) {
            _setFeeUpdatePeriod(
                currentSwapFee, _swapFee, MIN_DELAY_TRANSITION_PERIOD
            );
        } else if (_swapFee > currentSwapFee) {
            feeSettings.endValue = _swapFee;
            feeSettings.endTime = block.timestamp;
        }

        if (_mintAndBurnFee != mintAndBurnFee) {
            mintAndBurnFee = _mintAndBurnFee;
        }

        if (_managerShareFee != managerShareFee) {
            managerShareFee = _managerShareFee;
        }

        if (_transitionPeriod != 0) {
            uint256 endTransitionTimestamp = block.timestamp + _transitionPeriod;

            uint256 length = tokens.length;
            for (uint256 i = 0; i < length;) {
                address token = tokens[i];
                uint256 newWeight = _newWeights[i];

                Transition storage tokenWeightTransition = weights[token];

                tokenWeightTransition.startValue = tokenWeightTransition.endTime
                    > block.timestamp
                    ? getCurrentWeight(token)
                    : tokenWeightTransition.endValue;
                tokenWeightTransition.endValue = newWeight;
                tokenWeightTransition.startTime = block.timestamp;
                tokenWeightTransition.endTime = endTransitionTimestamp;

                unchecked {
                    ++i;
                }
            }
        }

        emit SettingsUpdated(
            nonce,
            _swapFee,
            _mintAndBurnFee,
            _managerShareFee,
            _newWeights,
            _transitionPeriod
        );
    }

    /// @notice Locks or unlocks rebalancing operations
    /// @param _lock True to lock rebalancing, false to unlock
    function setRebalanceLock(bool _lock) external onlyOwner {
        if (isRebalancingLocked == _lock) {
            revert Index__RebalanceLockedAlreadySet();
        }
        isRebalancingLocked = _lock;
        if (_lock) {
            emit RebalanceLocked(true);
        } else {
            _setFeeUpdatePeriod(
                20000, feeSettings.endValue, MIN_DELAY_TRANSITION_PERIOD
            );
            emit RebalanceLocked(false);
        }
    }

    /// @notice Ensures reserves after a rebalance operation
    /// @param balanceInBefore Balance of tokenIn before the rebalance
    /// @param balanceOutBefore Balance of tokenOut before the rebalance
    /// @param balanceInAfter Balance of tokenIn after the rebalance
    /// @param balanceOutAfter Balance of tokenOut after the rebalance
    /// @param tokenIn Token being swapped in
    /// @param tokenOut Token being swapped out
    function _ensureReservesAfterRebalance(
        uint256 balanceInBefore,
        uint256 balanceOutBefore,
        uint256 balanceInAfter,
        uint256 balanceOutAfter,
        address tokenIn,
        address tokenOut
    ) internal view {
        uint256 weightOut = getCurrentWeight(tokenOut);
        if (weightOut == 0) revert Index__TokenNotListed(); // Only tokenOut can be 0

        _ensureReserves(
            balanceInBefore,
            balanceOutBefore,
            balanceInAfter,
            balanceOutAfter,
            getCurrentWeight(tokenIn),
            weightOut
        );
    }

    /// @notice Ensures the weighted pool invariant holds after a rebalance
    /// @param R1_original Original balance of token1
    /// @param R2_original Original balance of token2
    /// @param R1_new New balance of token1
    /// @param R2_new New balance of token2
    /// @param w1_int Weight of token1
    /// @param w2_int Weight of token2
    function _ensureReserves(
        uint256 R1_original,
        uint256 R2_original,
        uint256 R1_new,
        uint256 R2_new,
        uint256 w1_int,
        uint256 w2_int
    ) internal pure {
        // Use epsilon for near-equality of weights (0.01 ether)
        if (
            w1_int > w2_int
                ? w1_int - w2_int <= 0.01 ether
                : w2_int - w1_int <= 0.01 ether
        ) {
            if (Math.mulDiv(R1_new, R2_new, R2_original) < R1_original) {
                revert Index__SameWeightReservesViolation();
            }
        } else {
            uint256 total_weight = w1_int + w2_int;
            int128 w1 = ABDKMath64x64.divu(w1_int, total_weight);
            int128 w2 = ABDKMath64x64.divu(w2_int, total_weight);
            int128 r1_ratio = ABDKMath64x64.divu(R1_new, R1_original);
            int128 r2_ratio = ABDKMath64x64.divu(R2_new, R2_original);
            int128 ln_r1_ratio = ABDKMath64x64.ln(r1_ratio);
            int128 ln_r2_ratio = ABDKMath64x64.ln(r2_ratio);
            int128 delta_lnK = w1.mul(ln_r1_ratio).add(w2.mul(ln_r2_ratio));

            if (delta_lnK < 0) {
                revert Index__ReservesViolation();
            }
        }
    }
}
