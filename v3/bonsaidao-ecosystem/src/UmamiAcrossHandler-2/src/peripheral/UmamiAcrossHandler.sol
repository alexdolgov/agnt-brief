pragma solidity 0.8.17;

import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { AssetVault } from "../vaults/AssetVault.sol";
import { StorageViewer } from "../peripheral/StorageViewer.sol";
import { AggregateVault } from "../vaults/AggregateVault.sol";
import { Delegatecall } from "../libraries/Delegatecall.sol";
import { OracleWrapper } from "../peripheral/OracleWrapper.sol";
import { UniswapV3SwapManager } from "../handlers/UniswapV3SwapManager.sol";
import { IWNT } from "../interfaces/IWNT.sol";
import "../interfaces/ICallbackReceiver.sol";

contract UmamiAcrossHandler is ICallbackReceiver {
    using SafeTransferLib for ERC20;
    using Delegatecall for address;

    /// @notice unauthorised to call
    error Unauthorized();
    /// @notice vault is not supported by this handler
    error VaultNotEnabled();
    /// @notice token sent is not valid for vault deposit
    error InvalidToken();
    /// @notice the vault rebalance period is open
    error RebalanceOpen();
    /// @notice caller from across
    address public acrossSpokePool;
    /// @notice delegate call swap manager
    address public swapManager;
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
                bytes memory ret = swapManager.delegateCall(
                    abi.encodeWithSelector(
                        UniswapV3SwapManager.exactOutputSwap.selector, tokenSent, TOKEN_WETH, executionGasAmount, maxIn
                    )
                );
                amountIn = abi.decode(ret, (uint256));
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

    function setSwapManager(address _swapManager) external onlyConfigurator {
        swapManager = _swapManager;
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

    function executeOnSwapHandler(bytes calldata data) external payable onlyConfigurator returns (bytes memory ret) {
        ret = swapManager.delegateCall(data);
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
