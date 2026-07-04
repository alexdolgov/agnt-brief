// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

// import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/contracts/interfaces/IRouterClient.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../../../interfaces/flashloanHelper/IFlashloanHelper.sol";
import "../../../../interfaces/aave/v3/IPoolV3.sol";
import "../../../../interfaces/IStrategy.sol";
import "../../../libraries/Errors.sol";
import "../../../swap/ParaSwapCaller.sol";

contract GHOAvalanche is ParaSwapCaller, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    // The contract used for USDE minting and redemption.
    IPoolV3 internal constant AavePool = IPoolV3(0x794a61358D6845594F94dc1DB02A252b5b4814aD);

    bytes32 internal constant STORAGE_SLOT = keccak256("app.cian.gho.avalanche.aave");

    address internal constant GHO = 0xfc421aD3C883Bf9E7C4f42dE845C4e4405799e73;

    address internal constant A_GHO = 0xf611aEb5013fD2c0511c9CD55c7dc5C1140741A6;

    address internal constant SAVAX = 0x2b2C81e08f1Af8835a78Bb2A90AE924ACE0eA4bE;

    uint64 internal constant ETHEREUM_CHAINS_SELECTOR = 5009297550715157269;

    struct StrategyConfig {
        address ccipRouter;
        address meritDistributor; // The address of the merit distributor.
        address l1Receiver; // The address of the receiver on L1.
    }

    event UpdateMeritDistributor(address oldDistributor, address newDistributor);
    event UpdateCcipRouter(address oldRouter, address newRouter);
    event UpdateL1Receiver(address oldReceiver, address newReceiver);
    event ClaimRewards(address receiver, uint256 amount);
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

    function initialize(bytes calldata _initBytes) external initializer {
        (address admin_, address l1Receiver_, address ccipRouter_) =
            abi.decode(_initBytes, (address, address, address));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (ccipRouter_ == address(0)) revert Errors.InvalidTarget();
        if (l1Receiver_ == address(0)) revert Errors.InvalidTarget();
        __Ownable_init(admin_);

        $().l1Receiver = l1Receiver_;
        $().ccipRouter = ccipRouter_;

        // Approve to pool
        IERC20(GHO).safeIncreaseAllowance(address(AavePool), type(uint256).max);
    }

    function meritDistributor() external view returns (address) {
        return $().meritDistributor;
    }

    function updateMeritDistributor(address _meritDistributor) external onlyOwner {
        if (_meritDistributor == address(0)) revert Errors.InvalidTarget();
        emit UpdateMeritDistributor($().meritDistributor, _meritDistributor);
        $().meritDistributor = _meritDistributor;
    }

    function ccipRouter() external view returns (address) {
        return $().ccipRouter;
    }

    function updateCcipRouter(address _ccipRouter) external onlyOwner {
        if (_ccipRouter == address(0)) revert Errors.InvalidTarget();
        emit UpdateCcipRouter($().ccipRouter, _ccipRouter);
        $().ccipRouter = _ccipRouter;
    }

    function l1Receiver() external view returns (address) {
        return $().l1Receiver;
    }

    function updateL1Receiver(address _l1Receiver) external onlyOwner {
        if (_l1Receiver == address(0)) revert Errors.InvalidTarget();
        emit UpdateL1Receiver($().l1Receiver, _l1Receiver);
        $().l1Receiver = _l1Receiver;
    }

    function _deposit(address _token, uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(_token).balanceOf(address(this));
        }
        AavePool.deposit(_token, _amount, address(this), 0);
    }

    function deposit(address, uint256 _amount) external onlyOwner {
        _deposit(GHO, _amount);
    }

    function _withdraw(address _token, uint256 _amount) internal {
        AavePool.withdraw(_token, _amount, address(this));
    }

    function withdraw(address _token, uint256 _amount) external onlyOwner {
        _withdraw(_token, _amount);
    }

    function swap(address _from, address _to, uint256 _inAmount, uint256 _minOut, bytes calldata _data)
        external
        onlyOwner
        returns (uint256 outAmount_)
    {
        if (!(_from == SAVAX)) {
            revert Errors.UnsupportedToken();
        }
        // Call the ParaSwap swap function
        (uint256 out_,) = executeSwap(_inAmount, _from, _to, _data, _minOut);
        return out_;
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
        onlyOwner
        returns (bytes32 messageId, uint256 fees)
    {
        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        // address(0) means fees are paid in native gas
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage($().l1Receiver, _token, _amount, address(0));

        // Get the fee required to send the message
        fees = IRouterClient($().ccipRouter).getFee(ETHEREUM_CHAINS_SELECTOR, evm2AnyMessage);

        if (fees > msg.value) {
            revert Errors.NotEnoughBalance();
        }

        // approve the Router to spend tokens on contract's behalf. It will spend the amount of the given token
        IERC20(_token).forceApprove($().ccipRouter, _amount);

        // Send the message through the router and store the returned message ID
        messageId = IRouterClient($().ccipRouter).ccipSend{value: fees}(ETHEREUM_CHAINS_SELECTOR, evm2AnyMessage);

        // Emit an event with message details
        emit TokensTransferred(messageId, ETHEREUM_CHAINS_SELECTOR, $().l1Receiver, _token, _amount, address(0), fees);
    
        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }

    function claim(bytes calldata _data) external onlyOwner {
        // Check _data signature should be 0x71ee95c0 (claim(address[], address[], uint256[], bytes32[][]))
        bytes4 sig = bytes4(_data[:4]);
        if (sig != 0x71ee95c0) {
            revert Errors.UnSupportedOperation();
        }
        // Call merit distributor's claim function
        (bool success_, ) = $().meritDistributor.call(_data);
        if (!success_) {
            revert Errors.InfoExpired();
        }
    }
}
