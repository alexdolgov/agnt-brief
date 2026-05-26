// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { IERC20Metadata, IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { WadRayMath } from "@radiant-v2-core/lending/libraries/math/WadRayMath.sol";
import { PercentageMath } from "@radiant-v2-core/lending/libraries/math/PercentageMath.sol";
import { IOracleRouter } from "./interfaces/IOracleRouter.sol";
import { ILendingPoolAddressesProvider } from "@radiant-v2-core/interfaces/ILendingPoolAddressesProvider.sol";
import { DexSwapStrategy } from "./libraries/swap-strategies/DexSwapStrategy.sol";
import { ILendingPool } from "@radiant-v2-core/interfaces/ILendingPool.sol";
import { IAToken } from "@radiant-v2-core/interfaces/IAToken.sol";
import { Errors } from "./libraries/Errors.sol";

enum SwapStrategies {
    AGGREGATOR
}

struct OutputTokenConfig {
    // 10000 = 100%
    uint256 maximumSlippage;
    // 10000 = 100%
    uint256 percentage;
    address priceOracle;
    IAToken rTokenCore;
}

struct SwapInput {
    uint256 amountIn;
    bytes data;
    address inputToken;
    uint256 minOutput;
    address outputToken;
    SwapStrategies swapStrategy;
}

/// @title RevenueManagement contract
/// @author Radiant
contract RevenueManagement is OwnableUpgradeable, PausableUpgradeable {
    using WadRayMath for uint256;
    using PercentageMath for uint256;

    /// @notice MiddleFeeDistribution address (MultiFeeDistribution on mainnet)
    address public mfd;

    /// @notice Core markets lending pool
    address public coreLendingPool;

    /// @notice List of output tokens
    address[] public outputTokens;

    //////////////// <*_*> Storage <*_*> ////////////////
    mapping(address => OutputTokenConfig) public outputTokenConfigs;
    mapping(address => IOracleRouter) public inputTokenOracle;
    mapping(address => bool) public isWhitelisted;

    //////////////// =^..^= Events =^..^= ////////////////
    event SetWhitelisted(address indexed account, bool isWhitelisted);
    event TokensAcquired(address indexed token, uint256 amount);
    event InputTokenAdded(address indexed token, IOracleRouter oracle);
    event InputTokenRemoved(address indexed token);
    event OutputTokensConfigUpdated(uint256 outputTokensLength);

    modifier onlyWhitelisted() {
        if (!isWhitelisted[msg.sender]) revert Errors.NotAuthorized();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializer
     * @param _mfd MiddleFeeDistribution address
     * @param _coreLendingPool Core lending pool address
     */
    function initialize(address _mfd, address _coreLendingPool) external initializer {
        if (_mfd == address(0)) revert Errors.AddressZero();
        if (_coreLendingPool == address(0)) revert Errors.AddressZero();

        mfd = _mfd;
        coreLendingPool = _coreLendingPool;

        __Ownable_init();
        __Pausable_init();
    }

    /**
     * @notice Set state for an address in whitelist
     * @param _account Address
     * @param _isWhitelisted Whitelisted state
     */
    function setWhitelist(address _account, bool _isWhitelisted) external onlyOwner {
        if (_account == address(0)) revert Errors.AddressZero();
        isWhitelisted[_account] = _isWhitelisted;
        emit SetWhitelisted(_account, _isWhitelisted);
    }

    /**
     * @notice Set output tokens configuration
     * @param _outputTokens Output tokens
     * @param _configs Output token configurations
     */
    function setOutputTokensConfig(address[] calldata _outputTokens, OutputTokenConfig[] calldata _configs)
        public
        onlyOwner
    {
        if (_outputTokens.length != _configs.length) {
            revert Errors.OutputTokenConfigLengthMismatch();
        }

        delete outputTokens;

        uint256 sumCheck;
        for (uint256 i = 0; i < _configs.length; i++) {
            outputTokens.push(_outputTokens[i]);
            outputTokenConfigs[_outputTokens[i]] = _configs[i];
            sumCheck += _configs[i].percentage;
        }

        if (sumCheck != 10_000) {
            revert Errors.PercentageMismatch();
        }

        emit OutputTokensConfigUpdated(_outputTokens.length);
    }

    /**
     * @notice Adds an input token
     * @param _inputToken Input token
     * @param _inputTokenOracle Input token configuration
     */
    function addInputToken(address _inputToken, IOracleRouter _inputTokenOracle) external onlyOwner {
        if (_inputToken == address(0)) revert Errors.AddressZero();
        if (address(_inputTokenOracle) == address(0)) revert Errors.AddressZero();
        inputTokenOracle[_inputToken] = _inputTokenOracle;
        emit InputTokenAdded(_inputToken, _inputTokenOracle);
    }

    /**
     * @notice Removes an input token
     * @param _inputToken Input token
     */
    function removeInputToken(address _inputToken) external onlyOwner {
        if (address(inputTokenOracle[_inputToken]) == address(0)) revert Errors.TokenNotPresent();
        delete inputTokenOracle[_inputToken];
        emit InputTokenRemoved(_inputToken);
    }

    /**
     * @notice Check if an input token is configured
     * @param _inputToken Address of the token to check
     */
    function isInputTokenValid(address _inputToken) public view returns (bool) {
        return address(inputTokenOracle[_inputToken]) != address(0);
    }

    /**
     * @notice Unwraps rTokens to the underlying tokens
     * @param _rTokens Addresses of the rTokens to unwrap
     * @param _amounts Amounts of the rTokens to unwrap
     */
    function unwrapRToken(IAToken[] calldata _rTokens, uint256[] calldata _amounts) external onlyWhitelisted {
        if (_rTokens.length != _amounts.length) revert Errors.InputTokenConfigLengthMismatch();

        for (uint256 i = 0; i < _rTokens.length; i++) {
            address underlyingToken = _rTokens[i].UNDERLYING_ASSET_ADDRESS();
            uint256 amountToWithdraw = _amounts[i];

            ILendingPool lendingPool = ILendingPool(_rTokens[i].POOL());
            lendingPool.withdraw(underlyingToken, amountToWithdraw, address(this));
        }
    }

    /**
     * @notice Swap tokens
     * @param swapInput Swap input
     */
    function swapTokens(SwapInput[] calldata swapInput) external whenNotPaused onlyWhitelisted {
        // First compute the total value of the input tokens
        uint256 totalInputValue = computeInputValue(swapInput);

        // Get the initial balance of the output tokens so we can see the actual delta later
        uint256[] memory initialOutputTokenBalances = new uint256[](outputTokens.length);
        for (uint256 i = 0; i < outputTokens.length; i++) {
            initialOutputTokenBalances[i] = IERC20(outputTokens[i]).balanceOf(address(this));
        }

        // Perform the swaps as instructed
        for (uint256 i = 0; i < swapInput.length; i++) {
            if (swapInput[i].swapStrategy == SwapStrategies.AGGREGATOR) {
                DexSwapStrategy.swap(
                    swapInput[i].inputToken, swapInput[i].amountIn, swapInput[i].minOutput, swapInput[i].data
                );
            } else {
                revert Errors.InvalidSwapStrategy();
            }
        }

        // Finally verify that the output tokens are within the expected range
        for (uint256 i = 0; i < outputTokens.length; i++) {
            OutputTokenConfig memory outputTokenConfig = outputTokenConfigs[outputTokens[i]];
            uint256 price = IOracleRouter(outputTokenConfig.priceOracle).getAssetPrice(outputTokens[i]);

            uint8 targetTokenDecimals = IERC20Metadata(outputTokens[i]).decimals();

            uint256 targetValue = totalInputValue.percentMul(outputTokenConfig.percentage);

            uint256 targetTokens = (targetValue * 10 ** targetTokenDecimals) / price;

            uint256 actualTokens = IERC20(outputTokens[i]).balanceOf(address(this)) - initialOutputTokenBalances[i];

            emit TokensAcquired(outputTokens[i], actualTokens);

            uint256 maximumSlippage = outputTokenConfig.maximumSlippage;

            if (
                !(
                    actualTokens >= targetTokens.percentMul(10_000 - maximumSlippage)
                        && actualTokens <= targetTokens.percentMul(10_000 + maximumSlippage)
                )
            ) {
                revert Errors.OutputTokenBalanceOutOfRange();
            }

            _depositToCoreLendingPool(outputTokens[i], actualTokens);
        }
    }

    /**
     * @notice Computes the total value of the input tokens
     * @param swapInput Swap input
     */
    function computeInputValue(SwapInput[] calldata swapInput) public view returns (uint256) {
        uint256 totalInputValue = 0;
        for (uint256 i = 0; i < swapInput.length; i++) {
            uint256 price = inputTokenOracle[swapInput[i].inputToken].getAssetPrice(swapInput[i].inputToken);

            uint256 tokenDecimals = IERC20Metadata(swapInput[i].inputToken).decimals();

            uint256 assetValue = (price * swapInput[i].amountIn) / (10 ** tokenDecimals);

            totalInputValue += assetValue;
        }
        return totalInputValue;
    }

    /**
     * @notice Deposit tokens to the core lending pool then transfer to mfd
     * @param _token Address of the token to deposit
     * @param _amount Amount of the token to deposit
     */
    function _depositToCoreLendingPool(address _token, uint256 _amount) internal {
        ILendingPool lendingPool = ILendingPool(coreLendingPool);
        IERC20(_token).approve(coreLendingPool, _amount);
        lendingPool.deposit(_token, _amount, address(this), 0);
        outputTokenConfigs[_token].rTokenCore.transfer(mfd, _amount);
    }
}
