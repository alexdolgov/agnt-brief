pragma solidity 0.8.17;

import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { AssetVault } from "../vaults/AssetVault.sol";
import { StorageViewer } from "../peripheral/StorageViewer.sol";
import { AggregateVault } from "../vaults/AggregateVault.sol";
import { Delegatecall } from "../libraries/Delegatecall.sol";
import { OracleWrapper } from "../peripheral/OracleWrapper.sol";
import { IWNT } from "../interfaces/IWNT.sol";
import { ISwapRouter } from "../interfaces/uniswap/ISwapRouter.sol";
import { IUniswapV3Pool } from "../interfaces/uniswap/IUniswapV3Pool.sol";
import { IUniswapV3Factory } from "../interfaces/uniswap/IUniswapV3Factory.sol";
import { UNISWAP_SWAP_ROUTER, UNISWAP_FACTORY } from "../constants.sol";

import "../interfaces/ICallbackReceiver.sol";

contract UmamiAcrossHandler is ICallbackReceiver {
    using SafeTransferLib for ERC20;
    using Delegatecall for address;

    /// @notice swap config storage
    struct Config {
        uint24[] feeTiers;
        address intermediaryAsset;
    }

    /// @notice unauthorised to call
    error Unauthorized();
    /// @notice vault is not supported by this handler
    error VaultNotEnabled();
    /// @notice token sent is not valid for vault deposit
    error InvalidToken();
    /// @notice the vault rebalance period is open
    error RebalanceOpen();
    /// @notice insufficient output from swap
    error InsufficientOutput();
    /// @notice too much input to swap
    error TooMuchInput();

    /// @notice UniV3 router for calling swaps
    /// https://github.com/Uniswap/v3-periphery/blob/main/contracts/SwapRouter.sol
    ISwapRouter public constant uniV3Router = ISwapRouter(UNISWAP_SWAP_ROUTER);
    /// @notice UniV3 factory for discovering pools
    /// https://github.com/Uniswap/v3-core/blob/main/contracts/UniswapV3Factory.sol
    IUniswapV3Factory public constant uniV3factory = IUniswapV3Factory(UNISWAP_FACTORY);
    /// @notice swap config
    Config public swapConfig;
    /// @notice caller from across
    address public acrossSpokePool;
    /// @notice the admin for the contract
    address public configurator;
    /// @notice oracleWrapper that supports weth price
    OracleWrapper public wethOracleWrapper;
    /// @notice aggregateVault -> storageViewer
    mapping(address => bool) public requestHandler;
    /// @notice assetVault -> storageViewer
    mapping(address => bool) public vaultEnabled;
    /// @notice aggregateVault -> storageViewer
    mapping(address => StorageViewer) public storageViewers;

    /// @notice emitted when a deposit is processed cross-chain
    event RequestVaultDeposit(
        address asset, address vault, uint256 depositAmount, uint256 gasAmountPaid, address reciever
    );

    /// @notice WETH arbitrum
    address constant TOKEN_WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

    constructor(address _acrossSpokePool, address _configurator, OracleWrapper _wethOracleWrapper) {
        acrossSpokePool = _acrossSpokePool;
        configurator = _configurator;
        wethOracleWrapper = _wethOracleWrapper;
    }

    /// @dev handle the across message and vault deposit
    function handleV3AcrossMessage(
        address tokenSent,
        uint256 amount,
        address relayer, // relayer is unused
        bytes memory message
    ) external {
        // Verify that this call came from the Across SpokePool.
        if (msg.sender != acrossSpokePool) revert Unauthorized();

        // Decodes the deposit parameters.
        (address vault, address receiver) = abi.decode(message, (address, address));

        StorageViewer viewer = storageViewers[address(AssetVault(vault).aggregateVault())];
        OracleWrapper oracle = viewer.getOracleWrapper();

        if (address(AssetVault(vault).asset()) != tokenSent) revert InvalidToken();
        if (!vaultEnabled[vault]) revert VaultNotEnabled();
        if (viewer.rebalanceOpen()) revert RebalanceOpen();

        uint256 executionGasAmount = viewer.getExecutionGasAmountCallback() * tx.gasprice * 10_001 / 10_000;
        uint256 amountIn;
        {
            if (tokenSent != TOKEN_WETH) {
                // get the token prices and maxIn
                uint256 maxIn = executionGasAmount * wethOracleWrapper.getChainlinkPriceInternal(TOKEN_WETH) * 12_500
                    / oracle.getChainlinkPriceInternal(tokenSent) * 10_000;
                // execute the swap with the oracle wrapper from aggregate vault
                amountIn = _exactOutputSwap(tokenSent, TOKEN_WETH, executionGasAmount, maxIn);
            } else {
                amountIn = executionGasAmount;
            }
            // withdraw weth
            ERC20(TOKEN_WETH).safeApprove(TOKEN_WETH, executionGasAmount);
            IWNT(TOKEN_WETH).withdraw(executionGasAmount);
        }

        // deposit for the user
        ERC20(tokenSent).safeApprove(vault, amount - amountIn);
        AssetVault(vault).depositWithCallback{ value: executionGasAmount }(
            amount - amountIn, 0, receiver, address(this)
        );

        emit RequestVaultDeposit(tokenSent, vault, amount - amountIn, executionGasAmount, receiver);
    }

    /// @dev callable only by the vault request handler. Will verify the request is sucessful
    function afterDepositExecution(uint256 key, bool success, AggregateVaultStorage.OCRequest memory request)
        external
        onlyRequestHandler
    {
        // if the deposit fails, return the assets to the user
        require(request.sender == address(this));
        if (!success) {
            AssetVault assetVault = AssetVault(request.vault);
            ERC20 asset = assetVault.asset();
            asset.safeTransfer(request.account, request.amount);
        }
    }

    function afterWithdrawalExecution(uint256 key, bool sucess, AggregateVaultStorage.OCRequest memory request)
        external
    {
        /// @dev do nothing
    }

    function setAcrossSpokePool(address _newAcrossSpokePool) external onlyConfigurator {
        acrossSpokePool = _newAcrossSpokePool;
    }

    function setVaultEnabled(address vault, bool enabled) external onlyConfigurator {
        vaultEnabled[vault] = enabled;
    }

    function setStorageViewer(address aggregateVault, StorageViewer viewer) external onlyConfigurator {
        storageViewers[aggregateVault] = viewer;
    }

    function setRequestHandler(address handler, bool enabled) external onlyConfigurator {
        requestHandler[handler] = enabled;
    }

    function setConfigurator(address _configurator) external onlyConfigurator {
        configurator = _configurator;
    }

    function withdrawTokens(ERC20 token) external onlyConfigurator {
        token.safeTransfer(msg.sender, token.balanceOf(address(this)));
    }

    function withdrawEth(uint256 amount) external onlyConfigurator {
        (bool success,) = msg.sender.call{ value: amount }("");
        require(success);
    }

    /**
     * @notice Adds a new fee tier.
     * @param _feeTier A fee tier to add.
     */
    function addFeeTier(uint24 _feeTier) external onlyConfigurator {
        require(_feeTier > 0 && _feeTier < 100_000, "UniswapV3SwapManager: !_feeTier");
        swapConfig.feeTiers.push(_feeTier);
    }

    /**
     * @notice Removes an existing fee tier.
     * @param _feeTierToRemove A fee tier to remove.
     * @param _idx index of the tier.
     */
    function removeFeeTierAt(uint24 _feeTierToRemove, uint256 _idx) external onlyConfigurator {
        require(swapConfig.feeTiers[_idx] == _feeTierToRemove, "UniswapV3SwapManager: invalid idx");
        swapConfig.feeTiers[_idx] = swapConfig.feeTiers[swapConfig.feeTiers.length - 1];
        swapConfig.feeTiers.pop();
    }

    /**
     * @notice Sets the intermediary asset used for swapping.
     * @param _newAsset The address of the new intermediary asset.
     */
    function setIntermediaryAsset(address _newAsset) external onlyConfigurator {
        require(_newAsset != address(0), "UniswapV3SwapManager: !_newAsset");
        swapConfig.intermediaryAsset = _newAsset;
    }

    // SWAP
    // ------------------------------------------------------------------------------------------

    /**
     * @notice Swaps tokens using the Uniswap V3 router.
     * @param _tokenIn The address of the input token.
     * @param _tokenOut The address of the output token.
     * @param _amountOut The amount of output tokens to swap into.
     * @param _maxIn The maximum amount of input tokens that can be used.
     * @return _amountIn The actual amount of output tokens received.
     */
    function _exactOutputSwap(address _tokenIn, address _tokenOut, uint256 _amountOut, uint256 _maxIn)
        internal
        swapChecksExactOutput(_tokenIn, _tokenOut, _amountOut, _maxIn)
        returns (uint256 _amountIn)
    {
        bytes memory path = _getSwapPath(_tokenOut, _tokenIn);
        _amountIn = _swapTokenExactOutput(_tokenIn, _amountOut, _maxIn, path);
    }

    /**
     * @notice Internal function to generate the swap path.
     * @param _tokenIn The address of the input token.
     * @param _tokenOut The address of the output token.
     * @return path The encoded swap path.
     */
    function _getSwapPath(address _tokenIn, address _tokenOut) internal view returns (bytes memory path) {
        uint24 tokenInFee = _getSwapFee(_tokenIn);
        uint24 tokenOutFee = _getSwapFee(_tokenOut);
        require(_tokenIn != _tokenOut, "UniswapV3SwapManager: !unique tokens");
        if (_tokenIn == swapConfig.intermediaryAsset || _tokenOut == swapConfig.intermediaryAsset) {
            require(tokenInFee > 0 || tokenOutFee > 0, "UniswapV3SwapManager: !_tokenOut");
            uint24 fee = tokenInFee > 0 ? tokenInFee : tokenOutFee;
            path = abi.encodePacked(_tokenIn, fee, _tokenOut);
        } else {
            require(tokenInFee > 0, "UniswapV3SwapManager: !_tokenIn");
            require(tokenOutFee > 0, "UniswapV3SwapManager: !_tokenOut");
            path = abi.encodePacked(_tokenIn, tokenInFee, swapConfig.intermediaryAsset, tokenOutFee, _tokenOut);
        }
    }

    /**
     * @notice Internal function to perform a token swap with exact input.
     * @param _tokenIn The address of the input token.
     * @param _amountOut The amount of output tokens to swap into.
     * @param _maxIn The maximum amount of input tokens to use.
     * @param _path The encoded path for the swap.
     * @return _in The actual amount of input tokens used.
     */
    function _swapTokenExactOutput(address _tokenIn, uint256 _amountOut, uint256 _maxIn, bytes memory _path)
        internal
        returns (uint256 _in)
    {
        ISwapRouter.ExactOutputParams memory params = ISwapRouter.ExactOutputParams({
            path: _path,
            recipient: address(this),
            deadline: block.timestamp,
            amountOut: _amountOut,
            amountInMaximum: _maxIn
        });
        ERC20(_tokenIn).safeApprove(address(uniV3Router), _maxIn);
        return uniV3Router.exactOutput(params);
    }

    /**
     * @notice finds the pool with the highest balance of _balanceToken
     * @param _targetToken The address of the token recorded in config.
     * @return swapFee The fee for the pool with the highest balance of _balanceToken.
     */
    function _getSwapFee(address _targetToken) internal view returns (uint24 swapFee) {
        address bestSwapPool;
        address iterSwapPool;
        /// @dev the feeTiers will be of length 4-5 and set with manual config
        for (uint256 i = 0; i < swapConfig.feeTiers.length; i++) {
            iterSwapPool = uniV3factory.getPool(_targetToken, swapConfig.intermediaryAsset, swapConfig.feeTiers[i]);
            // set initial value
            if (bestSwapPool == address(0) && iterSwapPool != address(0)) {
                swapFee = swapConfig.feeTiers[i];
                bestSwapPool = iterSwapPool;
            }
            if (
                iterSwapPool != address(0)
                    && IUniswapV3Pool(bestSwapPool).liquidity() < IUniswapV3Pool(iterSwapPool).liquidity()
            ) {
                swapFee = swapConfig.feeTiers[i];
                bestSwapPool = iterSwapPool;
            }
        }
    }

    /**
     * @notice Modifier to enforce swap checks, ensuring sufficient input and output token amounts.
     * @param _tokenIn The address of the input token.
     * @param _tokenOut The address of the output token.
     * @param _amountOut The amount of output tokens to expect.
     * @param _maxIn The max amount of input tokens to send.
     */
    modifier swapChecksExactOutput(address _tokenIn, address _tokenOut, uint256 _amountOut, uint256 _maxIn) {
        uint256 tokenInBalance = ERC20(_tokenIn).balanceOf(address(this));
        uint256 tokenOutBalanceBefore = ERC20(_tokenOut).balanceOf(address(this));
        _;
        uint256 tokenOutBalanceAfter = ERC20(_tokenOut).balanceOf(address(this));
        uint256 actualOut = tokenOutBalanceAfter - tokenOutBalanceBefore;
        if (actualOut != _amountOut) revert InsufficientOutput();
        uint256 actualIn = tokenInBalance - ERC20(_tokenIn).balanceOf(address(this));
        if (actualIn > _maxIn) revert TooMuchInput();
    }

    modifier onlyConfigurator() {
        if (msg.sender != configurator) revert Unauthorized();
        _;
    }

    modifier onlyRequestHandler() {
        if (!requestHandler[msg.sender]) revert Unauthorized();
        _;
    }

    receive() external payable { }
}
