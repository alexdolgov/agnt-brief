// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";

// Interface for FeeDistributor
interface IFeeDistributor {
    function receiveERC20Fees(address _tokenAddress, uint256 _amount) external;
}

// IRangePositionManager Interface for ownership management
interface IRangePositionManager {
    function acceptFeeReceiver() external;
    function changeFeeReceiver(address newFeeReceiver) external;
}

/// @title FeeSplitterManager
/// @notice Manages ETH and ERC20 token distribution between a standard account and the FeeDistributor contract based on weights.
contract FeeSplitterManager is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using Address for address payable;

    address public owner;
    address public feeReceiverAlpha; // Normal account
    IFeeDistributor public feeDistributor; // FeeDistributor contract
    uint256 public alphaWeight; // Weight for feeReceiverAlpha (in basis points, 4 decimals)
    uint256 public distributorWeight; // Weight for feeDistributor (in basis points, 4 decimals)
    address private _pendingOwner;
    mapping(address => bool) public isTokenRegistered;

    IERC20[] public registeredTokens;

    /// @notice Emitted when a new owner is set.
    event NewOwner(address indexed oldOwner, address indexed owner);

    /// @notice Emitted when new fee receivers are set.
    event NewFeeReceiverAlpha(address indexed oldReceiver, address indexed newReceiver);
    event NewFeeDistributor(address indexed oldDistributor, address indexed newDistributor);

    /// @notice Emitted when a token is registered or deregistered.
    event TokenRegistered(address token);
    event TokenDeregistered(address token);

    /// @notice Emitted when tokens or ETH are split between fee receivers.
    event Split(address indexed token, uint256 amountAlpha, uint256 amountDistributor);

    /// @notice Emitted when tokens are recovered.
    event Recovered(address indexed token, uint256 amount, address to);

    /// @notice Emitted when weights are changed.
    event WeightsUpdated(uint256 oldAlphaWeight, uint256 newAlphaWeight, uint256 oldDistributorWeight, uint256 newDistributorWeight);

    error Unauthorized();
    error WeightsMustEqualOneMillion();
    error TokenAlreadyRegistered();
    error TokenNotRegistered();

    modifier onlyOwner {
        if (msg.sender != owner) revert Unauthorized();
        _;
    }

    /// @notice Initializes the contract with owner, fee receivers, and their respective weights.
    constructor(
        address owner_,
        address feeReceiverAlpha_,
        address feeDistributor_,
        uint256 alphaWeight_,
        uint256 distributorWeight_
    ) {
        require(owner_ != address(0), "Zero address");
        require(feeReceiverAlpha_ != address(0), "Zero address");
        require(feeDistributor_ != address(0), "Zero address");
        if (alphaWeight_ + distributorWeight_ != 1000000) revert WeightsMustEqualOneMillion();

        owner = owner_;
        feeReceiverAlpha = feeReceiverAlpha_;
        feeDistributor = IFeeDistributor(feeDistributor_);
        alphaWeight = alphaWeight_;
        distributorWeight = distributorWeight_;
    }

    /// @dev Allows the contract to receive ETH directly.
    receive() external payable {}

    /// @notice Allows the owner to register a new token.
    function registerToken(address token) external onlyOwner {
        if (isTokenRegistered[token]) revert TokenAlreadyRegistered();
        isTokenRegistered[token] = true;
        registeredTokens.push(IERC20(token));
        emit TokenRegistered(token);
    }

    /// @notice Allows the owner to deregister a token.
    function deregisterToken(address token) external onlyOwner {
        if (!isTokenRegistered[token]) revert TokenNotRegistered();
        uint256 length = registeredTokens.length;
        for (uint256 i = 0; i < length; i++) {
            if (address(registeredTokens[i]) == token) {
                registeredTokens[i] = registeredTokens[length - 1];
                registeredTokens.pop();
                break;
            }
        }
        isTokenRegistered[token] = false;
        emit TokenDeregistered(token);
    }

    /// @dev Function to split ETH.
    function splitETH() external onlyOwner nonReentrant {
        uint256 ethBalance = address(this).balance;
        if (ethBalance > 0) {
            uint256 alphaShare = (ethBalance * alphaWeight) / 1000000;
            uint256 distributorShare = ethBalance - alphaShare;

            if (alphaShare > 0) {
                payable(feeReceiverAlpha).sendValue(alphaShare);
            }

            if (distributorShare > 0) {
                payable(address(feeDistributor)).sendValue(distributorShare);
            }

            emit Split(address(0), alphaShare, distributorShare);
        }
    }

    /// @dev Function to split ERC20 tokens.
    function splitERC20(IERC20[] memory tokens) external onlyOwner nonReentrant {

        uint256 tokenLength = tokens.length;

        for(uint256 i; i < tokenLength; i++) {
            IERC20 token = tokens[i];

            uint256 balance = token.balanceOf(address(this));
            if (isTokenRegistered[address(token)] && balance > 0) {
                uint256 alphaShare = (balance * alphaWeight) / 1000000;
                uint256 distributorShare = balance - alphaShare;

                if (alphaShare > 0) {
                    token.safeTransfer(feeReceiverAlpha, alphaShare);
                }

                if (distributorShare > 0) {
                    // Reset allowance to zero first
                    token.forceApprove(address(feeDistributor), 0);
                    token.forceApprove(address(feeDistributor), distributorShare);
                    feeDistributor.receiveERC20Fees(address(token), distributorShare);
                }

                emit Split(address(token), alphaShare, distributorShare);
            }
        }
    }

    /// @notice Allows the owner to recover
    function emergencyWithdraw(address _token, address _to, uint256 _amount, bool isEthNative) external onlyOwner {
        if (isEthNative) {
            payable(_to).sendValue(_amount);
        } else {
            IERC20(_token).safeTransfer(_to, _amount);
        }
    }

    /// @notice Initiates the ownership transfer process.
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Zero address");
        _pendingOwner = newOwner;
    }

    /// @notice Accepts the ownership transfer.
    function acceptOwnership() external {
        require(msg.sender == _pendingOwner, "Unauthorized");
        address oldOwner = owner;
        owner = _pendingOwner;
        delete _pendingOwner;
        emit NewOwner(oldOwner, owner);
    }

    /// @notice Accepts the ownership of the Fee receiver.
    function acceptFeeReceiver(address rangePositionManager) external onlyOwner {
        IRangePositionManager(rangePositionManager).acceptFeeReceiver();
    }

    /// @notice Changes the feeReceiver.
    function changeFeeReceiver(address rangePositionManager, address newFeeReceiver) external onlyOwner {
        IRangePositionManager(rangePositionManager).changeFeeReceiver(newFeeReceiver);
    }

    /// @notice Initiates the fee receiver Alpha transfer process.
    function transferFeeReceiverAlpha(address newReceiver) external onlyOwner {
        require(newReceiver != address(0), "Zero address");
        address old = feeReceiverAlpha;
        feeReceiverAlpha = newReceiver;
        emit NewFeeReceiverAlpha(old, newReceiver);
    }

    /// @notice Sets a new FeeDistributor contract.
    function setFeeDistributor(address newDistributor) external onlyOwner {
        require(newDistributor != address(0), "Zero address");
        address old = address(feeDistributor);
        feeDistributor = IFeeDistributor(newDistributor);
        emit NewFeeDistributor(old, newDistributor);
    }

    /// @notice Changes the weights of the receivers.
    function setWeights(uint256 newAlphaWeight, uint256 newDistributorWeight) external onlyOwner {
        if (newAlphaWeight + newDistributorWeight != 1000000) revert WeightsMustEqualOneMillion();

        uint256 oldAlphaWeight = alphaWeight;
        uint256 oldDistributorWeight = distributorWeight;

        alphaWeight = newAlphaWeight;
        distributorWeight = newDistributorWeight;

        emit WeightsUpdated(oldAlphaWeight, alphaWeight, oldDistributorWeight, distributorWeight);
    }

    /// @notice Returns a list of all registered tokens.
    function getRegisteredTokens() external view returns (IERC20[] memory) {
        return registeredTokens;
    }
}
