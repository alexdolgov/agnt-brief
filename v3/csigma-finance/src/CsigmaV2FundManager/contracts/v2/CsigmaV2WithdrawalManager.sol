// SPDX-License-Identifier: BUSL-1.1
// @author cSigma Finance Inc., a Delaware company, for its Real World Credit tokenization protocol

pragma solidity 0.8.9;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/interfaces/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface ICsigmaPool{
    function fundManager() external view returns (address);
    function poolManager() external view returns (address);
}

/********************************************************************************* */

    // fund flow
    // Step 1. => `deployFunds()` on fund manager 
    // Step 2. => `claimFunds` on fund manager 
    // Step 3. => `sendToV2Reserve()` on fund manager 
    // Step 4. => `repay()` on withdrawal manager
    // Step 5. => `collectDue` on withdrawal manager

    // ideal flow should chain the steps 2,3,4 in a single transaction

/********************************************************************************* */

/// @title CsigmaV2WithdrawalManager
/// @notice This contract manages the fund repaid using a queue system
contract CsigmaV2WithdrawalManager is
    Initializable,
    AccessControlUpgradeable,
    UUPSUpgradeable,
    PausableUpgradeable
{
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    struct WithdrawalRequest {
        uint256 pendingLPTokenAmount;
        uint256 cumulativeLPTokenAmount;
        uint256 fulfilledAmount;
        address owner;
        bool isRepaymentCheckPoint;
    }

    struct RepaymentData {
        uint256 queuePosition;
        uint256 exchangeRatio;
    }

    IERC20Upgradeable  public underlyingToken;
    IERC4626 public LPToken;

    uint256 public currentQueuePosition;
    uint256 public fulfilledQueuePosition;
    uint256 public totalDueLPToken;

    RepaymentData[] public repaymentData;
    mapping (uint256 => WithdrawalRequest) public withdrawalQueue;
    mapping (address => uint256[]) public withdrawalQueuePositions;

    event WithdrawRequest(uint256 indexed queuePosition, address indexed owner, uint256 shares);
    event Claim(uint256 indexed queuePosition, address indexed owner, uint256 amount);
    event Repayment(uint256 indexed queuePosition, uint256 repaymentShares, uint256 exchangeRatio, uint256 queuePositionFulfilledAmount);

    /// @notice The role that allows the admin to pause the contract
    function initialize(address _underlyingToken, address _LPToken) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        __Pausable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, ICsigmaPool(_LPToken).fundManager());
        _grantRole(MANAGER_ROLE, ICsigmaPool(_LPToken).poolManager());
        underlyingToken = IERC20Upgradeable(_underlyingToken);
        LPToken = IERC4626(_LPToken);
        repaymentData.push(RepaymentData(0, 0));
    }

    function requestWithdrawal(uint256 _LPTokenAmount, address receiver) external {
        if (_LPTokenAmount == 0) {
            revert ("LPToken amount is zero");
        }
        LPToken.transferFrom(msg.sender, address(this), _LPTokenAmount);
        uint256 reserve = LPToken.maxRedeem(address(0));
        if (totalDueLPToken + _LPTokenAmount < reserve) {
            uint256 amountReceived = LPToken.redeem(_LPTokenAmount, receiver, address(this));
            emit Claim(0, receiver, amountReceived);
            return;
        } else if(totalDueLPToken < reserve) {
            uint256 redeemAmount = (reserve - totalDueLPToken);
            uint256 amountReceived = LPToken.redeem(redeemAmount, receiver, address(this));
            emit Claim(0, receiver, amountReceived);
            _LPTokenAmount -= redeemAmount;
        } 
        totalDueLPToken += _LPTokenAmount;
        if (currentQueuePosition == 0) {
            withdrawalQueue[++currentQueuePosition] = WithdrawalRequest(_LPTokenAmount, _LPTokenAmount, 0, receiver, false);
            withdrawalQueuePositions[msg.sender].push(1);
            emit WithdrawRequest(1, receiver, _LPTokenAmount);
        }
        else {
            ++currentQueuePosition;
            withdrawalQueue[currentQueuePosition] = WithdrawalRequest(_LPTokenAmount, withdrawalQueue[currentQueuePosition - 1].cumulativeLPTokenAmount + _LPTokenAmount, 0, receiver, false);
            withdrawalQueuePositions[msg.sender].push(currentQueuePosition);
            emit WithdrawRequest(currentQueuePosition, receiver, _LPTokenAmount);
        }
    }

    function claim(uint256 queuePosition, uint256 repaymentDataIndex) external {
        WithdrawalRequest memory request = withdrawalQueue[queuePosition];
        if (request.owner != msg.sender) {
            revert ("Request is not owned by the caller");
        }
        if (queuePosition > fulfilledQueuePosition) {
            revert ("Queue position is not fulfilled yet");
        }
        if (request.isRepaymentCheckPoint) {
            if(request.fulfilledAmount == 0) {
                revert ("Request has been claimed");
            }
            SafeERC20Upgradeable.safeTransfer(underlyingToken, request.owner, request.fulfilledAmount);
            emit Claim(queuePosition, request.owner, request.fulfilledAmount);
            withdrawalQueue[queuePosition].fulfilledAmount = 0;
        } else {
            RepaymentData memory lowerData = repaymentData[repaymentDataIndex - 1];
            RepaymentData memory currentData = repaymentData[repaymentDataIndex];
            if (lowerData.queuePosition >= queuePosition || currentData.queuePosition < queuePosition) {
                revert ("Repayment data index is not valid");
            }
            uint256 exchangeRatio = currentData.exchangeRatio;
            uint256 fulfilledAmount = request.pendingLPTokenAmount * exchangeRatio / 10 ** LPToken.decimals();
            withdrawalQueue[queuePosition].pendingLPTokenAmount = 0;
            if(fulfilledAmount == 0) {
                revert ("Request has been claimed");
            }
            emit Claim(queuePosition, request.owner, fulfilledAmount);
            SafeERC20Upgradeable.safeTransfer(underlyingToken, request.owner, fulfilledAmount);
        }
    }

    function repay(uint256 uptoQueuePosition, uint256 amount) external onlyRole(MANAGER_ROLE) {
        if (fulfilledQueuePosition > uptoQueuePosition) {
            revert ("Queue position is not valid");
        }

        if (totalDueLPToken == 0) {
            return;
        }
        
        if (uptoQueuePosition > currentQueuePosition) {
            uptoQueuePosition = currentQueuePosition;
        }

        uint256 paymentLPTokenAmount = LPToken.previewWithdraw(amount);
        if (paymentLPTokenAmount > totalDueLPToken) {
            paymentLPTokenAmount = totalDueLPToken;
        }
        uint256 amountReceived = LPToken.previewRedeem(paymentLPTokenAmount);
        uint256 maxWithdraw = LPToken.maxWithdraw(address(0));
        if (maxWithdraw <= amountReceived) {
            paymentLPTokenAmount = LPToken.withdraw(maxWithdraw, address(this), address(this));
            amountReceived = maxWithdraw;
        } else {
            LPToken.redeem(paymentLPTokenAmount, address(this), address(this));
        }
        uint256 multiplier = 10 ** LPToken.decimals();
        uint256 exchangeRatio = (amountReceived * multiplier) / paymentLPTokenAmount;

        uint256 fulfilledLPToken;

        if (fulfilledQueuePosition < uptoQueuePosition) {

            uint256 dueLPToken = withdrawalQueue[uptoQueuePosition].cumulativeLPTokenAmount 
                                + withdrawalQueue[fulfilledQueuePosition].pendingLPTokenAmount
                                - withdrawalQueue[fulfilledQueuePosition].cumulativeLPTokenAmount;
  
            if (
                paymentLPTokenAmount 
                    <= withdrawalQueue[uptoQueuePosition - 1].cumulativeLPTokenAmount 
                        + withdrawalQueue[fulfilledQueuePosition].pendingLPTokenAmount
                        - withdrawalQueue[fulfilledQueuePosition].cumulativeLPTokenAmount 
            ) {
                revert ("Payment amount is not enough");
            }

            uint256 pendingLPTokenAmount = dueLPToken - paymentLPTokenAmount;
            fulfilledLPToken = withdrawalQueue[uptoQueuePosition].pendingLPTokenAmount - pendingLPTokenAmount;

            withdrawalQueue[uptoQueuePosition].pendingLPTokenAmount = pendingLPTokenAmount;
            withdrawalQueue[uptoQueuePosition].isRepaymentCheckPoint = true;
            withdrawalQueue[uptoQueuePosition].fulfilledAmount += (fulfilledLPToken * exchangeRatio) / multiplier;

            withdrawalQueue[fulfilledQueuePosition].fulfilledAmount += (withdrawalQueue[fulfilledQueuePosition].pendingLPTokenAmount * exchangeRatio) / multiplier;
            withdrawalQueue[fulfilledQueuePosition].pendingLPTokenAmount = 0;

            fulfilledQueuePosition = uptoQueuePosition;
            emit Repayment(uptoQueuePosition, paymentLPTokenAmount, exchangeRatio, (fulfilledLPToken * exchangeRatio) / multiplier);
            repaymentData.push(RepaymentData(uptoQueuePosition - 1, exchangeRatio));

        } else {
            uint256 dueLPToken = withdrawalQueue[uptoQueuePosition].pendingLPTokenAmount;
            uint256 pendingLPTokenAmount = dueLPToken - paymentLPTokenAmount;
            withdrawalQueue[uptoQueuePosition].pendingLPTokenAmount = pendingLPTokenAmount;
            withdrawalQueue[uptoQueuePosition].fulfilledAmount += (paymentLPTokenAmount * exchangeRatio) / multiplier;
            emit Repayment(uptoQueuePosition, paymentLPTokenAmount, exchangeRatio, (paymentLPTokenAmount * exchangeRatio) / multiplier);
        }
        totalDueLPToken -= paymentLPTokenAmount;
    }

    /// @notice Upgrades the contract to a new implementation
    /// @dev Only the admin can call this function
    /// @param _newImplementation The address of the new implementation
    function _authorizeUpgrade(address _newImplementation)
        internal
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {}

    function getRepaymentData() external view returns (RepaymentData[] memory) {
        return repaymentData;
    }

    function getUserRequestsCount(address user) external view returns (uint256) {
        return withdrawalQueuePositions[user].length;
    }

    struct WithdrawalRequestData {
        uint256 queuePosition;
        uint256 pendingLPTokenAmount;
        uint256 cumulativeLPTokenAmount;
        uint256 fulfilledAmount;
        address owner;
        bool isRepaymentCheckPoint;
    }

    function getUserRequests(address user) external view returns (WithdrawalRequestData[] memory requests) {
        uint256[] memory positions = withdrawalQueuePositions[user];
        requests = new WithdrawalRequestData[](positions.length);
        for (uint256 i = 0; i < positions.length; i++) {
            requests[i] = WithdrawalRequestData(
                positions[i],
                withdrawalQueue[positions[i]].pendingLPTokenAmount,
                withdrawalQueue[positions[i]].cumulativeLPTokenAmount,
                withdrawalQueue[positions[i]].fulfilledAmount,
                withdrawalQueue[positions[i]].owner,
                withdrawalQueue[positions[i]].isRepaymentCheckPoint
            );
        }
    }
}