// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

// import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/contracts/interfaces/IRouterClient.sol";
import "../../../interfaces/flashloanHelper/IFlashloanHelper.sol";
import "../../../interfaces/aave/IAaveOracle.sol";
import "../../../interfaces/aave/v3/IPoolV3.sol";
import "../../../interfaces/IStrategy.sol";
import "../../libraries/Errors.sol";
import "../../swap/ParaSwapCaller.sol";
import "../base/StrategyBase.sol";

contract StrategyGHO is StrategyBase, ParaSwapCaller {
    using SafeERC20 for IERC20;

    // The contract used for USDE minting and redemption.
    IPoolV3 internal constant AavePool = IPoolV3(0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2);

    IAaveOracle internal constant AaveOracle = IAaveOracle(0x54586bE62E3c3580375aE3723C145253060Ca0C2);

    bytes32 internal constant STORAGE_SLOT = keccak256("app.cian.yieldlayer.fbtc.usda.aave");

    address internal constant RLUSD = 0x8292Bb45bf1Ee4d140127049757C2E0fF06317eD;

    address internal constant A_FBTC_AAVEV3 = 0xcCA43ceF272c30415866914351fdfc3E881bb7c2;

    address internal constant D_RLUSD_AAVEV3 = 0xBdFe7aD7976d5d7E0965ea83a81Ca1bCfF7e84a9;

    address internal constant GHO = 0x40D16FC0246aD3160Ccc09B8D0D3A2cD28aE6C2f;

    uint64 internal constant AVALANCH_CHAINS_SELECTOR = 6433500567565415381;

    uint256 internal constant MAX_NETASSETS_UPDATED_PERIOD = 14 days;

    struct StrategyConfig {
        uint256 maxCollRate; // The maximum collateralization rate for the strategy.
        address ccipRouter;
        address l2Receiver; // The address of the receiver on L2.
        uint256 lastUpdateTime;
    }

    event UpdateMaxCollRate(uint256 oldRate, uint256 newRate);
    event UpdateCcipRouter(address oldRouter, address newRouter);
    event UpdateL2Receiver(address oldReceiver, address newReceiver);
    event ClaimRLUSD(address indexed receiver, uint256 amount);
    event TokensTransferred(
        bytes32 indexed messageId,
        uint64 indexed destinationChainSelector,
        address receiver,
        address token,
        uint256 tokenAmount,
        address feeToken,
        uint256 fees
    );

    function $() internal pure returns (StrategyConfig storage config) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            config.slot := slot
        }
    }

    function initialize(bytes calldata _initBytes) external override initializer {
        (address admin_, address rebalancer_, address l2Receiver_, address ccipRouter_, uint256 maxCollRate_) =
            abi.decode(_initBytes, (address, address, address, address, uint256));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        if (ccipRouter_ == address(0)) revert Errors.InvalidTarget();
        if (l2Receiver_ == address(0)) revert Errors.InvalidTarget();
        __Ownable_init(admin_);

        rebalancer = rebalancer_;
        vault = msg.sender;

        $().maxCollRate = maxCollRate_;
        $().l2Receiver = l2Receiver_;
        $().ccipRouter = ccipRouter_;
        $().lastUpdateTime = block.timestamp;

        // Approve to pool
        IERC20(FBTC).safeIncreaseAllowance(address(AavePool), type(uint256).max);
        IERC20(RLUSD).safeIncreaseAllowance(address(AavePool), type(uint256).max);
        IERC20(USDT).safeIncreaseAllowance(address(AavePool), type(uint256).max);
    }

    function maxCollRate() external view returns (uint256) {
        return $().maxCollRate;
    }

    function updateMaxCollRate(uint256 _maxCollRate) external onlyOwner {
        if (_maxCollRate == 0) revert Errors.InvalidLimit();
        emit UpdateMaxCollRate($().maxCollRate, _maxCollRate);
        $().maxCollRate = _maxCollRate;
    }

    function ccipRouter() external view returns (address) {
        return $().ccipRouter;
    }

    function updateCcipRouter(address _ccipRouter) external onlyOwner {
        if (_ccipRouter == address(0)) revert Errors.InvalidTarget();
        emit UpdateCcipRouter($().ccipRouter, _ccipRouter);
        $().ccipRouter = _ccipRouter;
    }

    function l2Receiver() external view returns (address) {
        return $().l2Receiver;
    }

    function updateL2Receiver(address _l2Receiver) external onlyOwner {
        if (_l2Receiver == address(0)) revert Errors.InvalidTarget();
        emit UpdateL2Receiver($().l2Receiver, _l2Receiver);
        $().l2Receiver = _l2Receiver;
    }

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (_token != FBTC) revert Errors.InvalidToken();
        IERC20(FBTC).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function checkProtocolRatio() internal view {
        (uint256 colInUsd_, uint256 debtInUsd_,,,,) = AavePool.getUserAccountData(address(this));
        if (colInUsd_ == 0) {
            return; // No collateral, no need to check ratio
        }
        uint256 rate_ = debtInUsd_ * 1e18 / colInUsd_;
        if (rate_ > $().maxCollRate) {
            revert Errors.RatioOutOfRange();
        }
    }

    function getRatio() external view returns (uint256) {
        (uint256 colInUsd_, uint256 debtInUsd_,,,,) = AavePool.getUserAccountData(address(this));
        if (colInUsd_ == 0) {
            return 0;
        }
        return debtInUsd_ * 1e18 / colInUsd_;
    }

    function _deposit(address _token, uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(_token).balanceOf(address(this));
        }
        AavePool.deposit(_token, _amount, address(this), 0);
    }

    function deposit(address, uint256 _amount) external onlyRebalancer {
        _deposit(FBTC, _amount);
    }

    function _withdraw(address _token, uint256 _amount) internal {
        AavePool.withdraw(_token, _amount, address(this));
    }

    function withdraw(address, uint256 _amount) external onlyRebalancer {
        _withdraw(FBTC, _amount);
        checkProtocolRatio();
    }

    function _borrow(address _token, uint256 _amount) internal {
        AavePool.borrow(_token, _amount, 2, 0, address(this));
    }

    function borrow(uint256 _amount) external onlyRebalancer {
        _borrow(RLUSD, _amount);
        checkProtocolRatio();
    }

    function _repay(uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(RLUSD).balanceOf(address(this));
        }
        uint256 currentDebt_ = IERC20(D_RLUSD_AAVEV3).balanceOf(address(this));
        if (_amount > currentDebt_) {
            _amount = currentDebt_;
        }
        AavePool.repay(RLUSD, _amount, 2, address(this));
    }

    function repay(uint256 _amount) external onlyRebalancer {
        _repay(_amount);
    }

    function swap(address _from, address _to, uint256 _inAmount, uint256 _minOut, bytes calldata _data)
        external
        onlyRebalancer
        returns (uint256 outAmount_)
    {
        // Require that the from & to is in [GHO, RLUSD]
        if (!(_from == GHO && _to == RLUSD) && !(_to == GHO && _from == RLUSD)) {
            revert Errors.UnsupportedToken();
        }
        // Call the ParaSwap swap function
        (uint256 out_,) = executeSwap(_inAmount, _from, _to, _data, _minOut);
        return out_;
    }

    function getNetAssets() external view returns (uint256) {
        return IERC20(FBTC).balanceOf(address(this)) + IERC20(A_FBTC_AAVEV3).balanceOf(address(this));
    }

    /// @notice Construct a CCIP message.
    /// @dev This function will create an EVM2AnyMessage struct with all the necessary information for tokens transfer.
    /// @param _receiver The address of the receiver.
    /// @param _token The token to be transferred.
    /// @param _amount The amount of the token to be transferred.
    /// @param _feeTokenAddress The address of the token used for fees. Set address(0) for native gas.
    /// @return Client.EVM2AnyMessage Returns an EVM2AnyMessage struct which contains information for sending a CCIP message.
    function _buildCCIPMessage(address _receiver, address _token, uint256 _amount, address _feeTokenAddress)
        private
        pure
        returns (Client.EVM2AnyMessage memory)
    {
        // Set the token amounts
        Client.EVMTokenAmount[] memory tokenAmounts = new Client.EVMTokenAmount[](1);
        tokenAmounts[0] = Client.EVMTokenAmount({token: _token, amount: _amount});

        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        return Client.EVM2AnyMessage({
            receiver: abi.encode(_receiver), // ABI-encoded receiver address
            data: "", // No data
            tokenAmounts: tokenAmounts, // The amount and type of token being transferred
            extraArgs: Client._argsToBytes(
                // Additional arguments, setting gas limit and allowing out-of-order execution.
                // Best Practice: For simplicity, the values are hardcoded. It is advisable to use a more dynamic approach
                // where you set the extra arguments off-chain. This allows adaptation depending on the lanes, messages,
                // and ensures compatibility with future CCIP upgrades. Read more about it here: https://docs.chain.link/ccip/concepts/best-practices/evm#using-extraargs
                Client.GenericExtraArgsV2({
                    gasLimit: 0, // Gas limit for the callback on the destination chain
                    allowOutOfOrderExecution: true // Allows the message to be executed out of order relative to other messages from the same sender
                })
            ),
            // Set the feeToken to a feeTokenAddress, indicating specific asset will be used for fees
            feeToken: _feeTokenAddress
        });
    }

    /// @notice Transfer tokens to receiver on the destination chain.
    /// @notice Pay in native gas such as ETH on Ethereum or POL on Polygon.
    /// @notice the token must be in the list of supported tokens.
    /// @notice This function can only be called by the owner.
    /// @dev Assumes your contract has sufficient native gas like ETH on Ethereum or POL on Polygon.
    /// @param _token token address.
    /// @param _amount token amount.
    /// @return messageId The ID of the message that was sent.
    function birdgeTokensPayNative(address _token, uint256 _amount)
        external
        payable
        onlyRebalancer
        returns (bytes32 messageId, uint256 fees)
    {
        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        // address(0) means fees are paid in native gas
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage($().l2Receiver, _token, _amount, address(0));

        // Get the fee required to send the message
        fees = IRouterClient($().ccipRouter).getFee(AVALANCH_CHAINS_SELECTOR, evm2AnyMessage);

        if (fees > msg.value) {
            revert Errors.NotEnoughBalance();
        }

        // approve the Router to spend tokens on contract's behalf. It will spend the amount of the given token
        IERC20(_token).forceApprove($().ccipRouter, _amount);

        // Send the message through the router and store the returned message ID
        messageId = IRouterClient($().ccipRouter).ccipSend{value: fees}(AVALANCH_CHAINS_SELECTOR, evm2AnyMessage);

        // Emit an event with message details
        emit TokensTransferred(messageId, AVALANCH_CHAINS_SELECTOR, $().l2Receiver, _token, _amount, address(0), fees);

        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }
}
