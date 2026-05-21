// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IRouter} from "./interfaces/IRouter.sol";
import {IMToken} from "./interfaces/IMToken.sol";
import {MToken} from "./MToken.sol";
import {ISyncOAppV2} from "./interfaces/ISyncOAppV2.sol";
import {IWithdrawQueue} from "./interfaces/IWithdrawQueue.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {ErrorLibUpgradeable} from "./utils/ErrorLib.sol";
import {MessagingReceipt} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/interfaces/IOFT.sol";
import {OptionsBuilder} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/libs/OptionsBuilder.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {WithdrawOAppMessageHelper} from "./utils/WithdrawOAppMessageHelper.sol";
import {BaseMessageEndV2} from "./Sync/BaseMessageEndV2.sol";
import {RescueTokenUpgradeable} from "./utils/RescueTokenUpgradeable.sol";
import {IVault} from "./interfaces/IVault.sol";

contract WithdrawQueue is
    Initializable,
    IWithdrawQueue,
    BaseMessageEndV2,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    ErrorLibUpgradeable,
    WithdrawOAppMessageHelper,
    RescueTokenUpgradeable
{
    using SafeERC20 for IERC20;
    using OptionsBuilder for bytes;

    // Base value for rewardMultiplier
    uint256 public constant BASE = 1e18;

    IRouter public router;
    ISyncOAppV2 public syncOApp;

    bytes32 public constant WITHDRAW_REQUEST_FINALIZER_ROLE =
        keccak256("WITHDRAW_REQUEST_FINALIZER_ROLE");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    bool public withdrawPaused;

    mapping(address mToken => mapping(uint32 desEndId => mapping(address refundToken => PathInfo pathInfo)))
        public refundPaths;

    mapping(address mToken => mapping(uint32 desEndId => mapping(address refundToken => WithdrawRequest[] withdrawRequests)))
        public withdrawRequests;

    mapping(address mToken => mapping(uint32 desEndId => mapping(address refundToken => WithdrawCheckpoint[] withdrawCheckpoints)))
        public withdrawCheckpoints;

    mapping(address mToken => mapping(uint32 desEndId => mapping(address refundToken => uint finalizedMTokenAmount)))
        public pathFinalizedMTokenAmounts;

    mapping(address mToken => uint finalizedMTokenAmount)
        public finalizedMTokenAmounts;

    // mapping record mToken refund ratio safe range
    mapping(address mToken => RatioRange ratioRange)
        public mTokenRefundRatioGuard;

    uint32 public lzEndpointId;

    // when withdraw not paused
    modifier whenNotWithdrawPaused() {
        _validate(!withdrawPaused, 1);
        _;
    }

    function initialize(address router_, address syncOApp_) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __ErrorLibUpgradeable__init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();

        withdrawPaused = true;

        // validate router and syncOApp not zero address
        _validate(router_ != address(0) && syncOApp_ != address(0), 2);

        router = IRouter(router_);
        syncOApp = ISyncOAppV2(syncOApp_);
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    // update lzEndpointId
    function updateLzEndpointId(
        uint32 _lzEndpointId
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        lzEndpointId = _lzEndpointId;
    }

    // set refund path
    function registerRefundPath(
        address _mToken,
        uint32 _desEndId,
        address _refundToken,
        uint _waitPeriod,
        address _vault
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // check not registered
        _validate(
            !refundPaths[_mToken][_desEndId][_refundToken].registered,
            16
        );

        // vault not zero address
        _validate(_vault != address(0), 10);

        refundPaths[_mToken][_desEndId][_refundToken] = PathInfo({
            registered: true,
            withdrawPaused: true,
            nextUnhandledWithdrawRequestIndex: 0,
            waitPeriod: _waitPeriod,
            vault: _vault
        });

        emit RegisterPath(
            _mToken,
            _desEndId,
            _refundToken,
            _waitPeriod,
            _vault
        );
    }

    // batch set pause status of multiple paths
    function batchUpdateWithdrawPauseStatus(
        Path[] calldata _paths,
        bool[] calldata _statuses
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _validate(_paths.length == _statuses.length, 17);

        for (uint i = 0; i < _paths.length; ++i) {
            // check registered
            _validate(
                refundPaths[_paths[i].mToken][_paths[i].desEndId][
                    _paths[i].refundToken
                ].registered,
                5
            );

            refundPaths[_paths[i].mToken][_paths[i].desEndId][
                _paths[i].refundToken
            ].withdrawPaused = _statuses[i];

            // emit event
            emit PathPauseStatusChanged(
                _paths[i].mToken,
                _paths[i].desEndId,
                _paths[i].refundToken,
                _statuses[i]
            );
        }
    }

    // set withdraw pause status
    function setWithdrawPaused(
        bool _status
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // require different status
        _validate(withdrawPaused != _status, 3);
        withdrawPaused = _status;
        emit WithdrawPaused(_status);
    }

    function setPeerEndWhitelist(
        uint32 _lzEndId,
        bytes32 _peerAddr,
        bool _allowed
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        super._setPeerEndWhitelist(_lzEndId, _peerAddr, _allowed);
    }

    /// @notice User request to burn MToken to withdraw underlying assets
    /// @param _mToken MToken address
    /// @param _mTokenAmount MToken amount to burn
    /// @param _desEndId Destination end id
    /// @param _refundToken Refund token address on destination chain
    function requestWithdraw(
        address _mToken,
        uint _mTokenAmount,
        uint32 _desEndId,
        address _refundToken
    ) public whenNotPaused whenNotWithdrawPaused nonReentrant {
        _requestWithdrawSanityCheck(
            _mToken,
            _mTokenAmount,
            _desEndId,
            _refundToken
        );

        // transfer mToken to this
        router.pluginTransferERC20(
            _mToken,
            msg.sender,
            address(this),
            _mTokenAmount
        );

        // insert withdraw request
        uint indexInQueue = _updateWithdrawRequestsQueue(
            msg.sender,
            _mToken,
            _mTokenAmount,
            _desEndId,
            _refundToken
        );

        emit NewWithdrawRequest(
            msg.sender,
            _mToken,
            _desEndId,
            _refundToken,
            _mTokenAmount,
            indexInQueue
        );
    }

    function _requestWithdrawSanityCheck(
        address _mToken,
        uint _mTokenAmount,
        uint32 _desEndId,
        address _refundToken
    ) internal view {
        // validate amount not zero
        _validate(_mTokenAmount > 0, 4);

        PathInfo memory pathInfo = refundPaths[_mToken][_desEndId][
            _refundToken
        ];

        // validate refund path registered
        _validate(pathInfo.registered, 5);

        // validate refund path not paused
        _validate(!pathInfo.withdrawPaused, 6);
    }

    function _updateWithdrawRequestsQueue(
        address _account,
        address _mToken,
        uint _mTokenAmount,
        uint32 _desEndId,
        address _refundToken
    ) internal returns (uint indexInQueue) {
        // get the last handled withdarw request index
        uint withdrawRequestCount = withdrawRequests[_mToken][_desEndId][
            _refundToken
        ].length;

        uint previousAccumulatedMTokenAmount;
        if (withdrawRequestCount > 0) {
            previousAccumulatedMTokenAmount = withdrawRequests[_mToken][
                _desEndId
            ][_refundToken][withdrawRequestCount - 1].accumulatedMTokenAmount;
        }

        withdrawRequests[_mToken][_desEndId][_refundToken].push(
            WithdrawRequest({
                account: _account,
                mTokenAmount: _mTokenAmount,
                requestCreateTimestamp: block.timestamp,
                accumulatedMTokenAmount: previousAccumulatedMTokenAmount +
                    _mTokenAmount,
                claimed: false
            })
        );

        indexInQueue = withdrawRequestCount;

        return indexInQueue;
    }

    /// @notice finalize withdraw requests and generate checkpoint
    /// @param _finalizeParams FinalizeParameter
    function finalizeWithdrawRequests(
        FinalizeParameter memory _finalizeParams
    ) public onlyRole(WITHDRAW_REQUEST_FINALIZER_ROLE) nonReentrant {
        _finalizeWithdrawRequestsSanityCheck(_finalizeParams);

        // check ratio range
        _validate(
            _finalizeParams.ratio >=
                mTokenRefundRatioGuard[_finalizeParams.mToken].minRatio &&
                _finalizeParams.ratio <=
                mTokenRefundRatioGuard[_finalizeParams.mToken].maxRatio,
            21
        );

        (
            uint accumulatedMTokenAmount,
            uint checkpointIndex
        ) = _updateCheckpoint(_finalizeParams);

        // update nextUnhandledWithdrawRequestIndex
        refundPaths[_finalizeParams.mToken][_finalizeParams.desEndId][
            _finalizeParams.refundToken
        ].nextUnhandledWithdrawRequestIndex = _finalizeParams.endIndex + 1;

        // update path finalized mToken amount
        pathFinalizedMTokenAmounts[_finalizeParams.mToken][
            _finalizeParams.desEndId
        ][_finalizeParams.refundToken] += accumulatedMTokenAmount;

        // update finalizedMTokenAmounts
        finalizedMTokenAmounts[
            _finalizeParams.mToken
        ] += accumulatedMTokenAmount;

        emit NewCheckpoint(
            _finalizeParams.mToken,
            _finalizeParams.desEndId,
            _finalizeParams.refundToken,
            _finalizeParams.startIndex,
            _finalizeParams.endIndex,
            _finalizeParams.ratio,
            accumulatedMTokenAmount,
            checkpointIndex
        );
    }

    // finalizeWithdrawRequests sanity check
    function _finalizeWithdrawRequestsSanityCheck(
        FinalizeParameter memory _finalizeParams
    ) internal view {
        // start index should be the next unhandled withdraw request's index
        _validate(
            _finalizeParams.startIndex ==
                refundPaths[_finalizeParams.mToken][_finalizeParams.desEndId][
                    _finalizeParams.refundToken
                ].nextUnhandledWithdrawRequestIndex,
            7
        );

        _validate(
            _finalizeParams.startIndex <= _finalizeParams.endIndex &&
                _finalizeParams.endIndex <
                withdrawRequests[_finalizeParams.mToken][
                    _finalizeParams.desEndId
                ][_finalizeParams.refundToken].length,
            8
        );
    }

    // update checkpoint
    function _updateCheckpoint(
        FinalizeParameter memory _finalizeParams
    ) internal returns (uint, uint) {
        WithdrawRequest[] storage withdrawRequest_ls = withdrawRequests[
            _finalizeParams.mToken
        ][_finalizeParams.desEndId][_finalizeParams.refundToken];

        // calculate checkpoint's mTokenAmount
        uint lastWithdrawRequestAccumulatedMTokenAmount;
        if (_finalizeParams.startIndex != 0) {
            lastWithdrawRequestAccumulatedMTokenAmount = withdrawRequest_ls[
                _finalizeParams.startIndex - 1
            ].accumulatedMTokenAmount;
        }
        uint accumulatedMTokenAmount = withdrawRequest_ls[
            _finalizeParams.endIndex
        ].accumulatedMTokenAmount - lastWithdrawRequestAccumulatedMTokenAmount;

        // insert withdrawCheckpoint
        withdrawCheckpoints[_finalizeParams.mToken][_finalizeParams.desEndId][
            _finalizeParams.refundToken
        ].push(
                WithdrawCheckpoint({
                    startIndex: _finalizeParams.startIndex,
                    endIndex: _finalizeParams.endIndex,
                    appliedRatio: _finalizeParams.ratio,
                    mTokenAmount: accumulatedMTokenAmount
                })
            );

        uint checkpointIndex = withdrawCheckpoints[_finalizeParams.mToken][
            _finalizeParams.desEndId
        ][_finalizeParams.refundToken].length - 1;

        return (accumulatedMTokenAmount, checkpointIndex);
    }

    function _withdrawFromVault(ClaimParams calldata _params) internal {
        // calculate refund token amount
        uint refundTokenAmount = (withdrawRequests[_params.mToken][
            _params.desEndId
        ][_params.refundToken][_params.indexInQueue].mTokenAmount *
            withdrawCheckpoints[_params.mToken][_params.desEndId][
                _params.refundToken
            ][_params.checkpointIndex].appliedRatio) / BASE;

        bool success = IVault(
            refundPaths[_params.mToken][_params.desEndId][_params.refundToken]
                .vault
        ).withdrawByWithdrawQueue(
                WithdrawOAppMessage({
                    refundToken: _params.refundToken,
                    refundTokenAmount: refundTokenAmount,
                    decimals: MToken(_params.mToken).decimals(),
                    refundTokenReceiver: _params.desTokenRefundReceiver
                })
            );

        _validate(success, 22);
    }

    // claim
    function claim(
        ClaimParams calldata _params
    ) public payable nonReentrant whenNotPaused whenNotWithdrawPaused {
        _claimSanityCheck(_params);

        uint remainingMsgValue = msg.value;

        bytes32 guid;
        if (_params.desEndId == lzEndpointId) {
            // call vault to withdraw fund
            _withdrawFromVault(_params);
        } else {
            // send xcm to destination chain valut to refund
            (
                uint refundTokenAmount,
                MessagingReceipt memory receipt
            ) = _sendXcmToVault(_params);
            remainingMsgValue -= receipt.fee.nativeFee;
            guid = receipt.guid;
        }

        WithdrawRequest storage withdrawRequest = withdrawRequests[
            _params.mToken
        ][_params.desEndId][_params.refundToken][_params.indexInQueue];

        // burn mToken
        IMToken(_params.mToken).burn(
            address(this),
            withdrawRequest.mTokenAmount
        );

        // mark withdraw request as claimed first
        withdrawRequest.claimed = true;

        // refund
        if (remainingMsgValue > 0) {
            Address.sendValue(
                payable(_params.msgValueRefundReceiver),
                remainingMsgValue
            );
            emit Refund(_params.msgValueRefundReceiver, remainingMsgValue);
        }

        emit Claim(
            msg.sender,
            _params.mToken,
            _params.desEndId,
            _params.refundToken,
            _params.indexInQueue,
            withdrawRequest.mTokenAmount,
            withdrawCheckpoints[_params.mToken][_params.desEndId][
                _params.refundToken
            ][_params.checkpointIndex].appliedRatio,
            _params.msgValueRefundReceiver,
            _params.desTokenRefundReceiver,
            guid
        );
    }

    function _sendXcmToVault(
        ClaimParams calldata _params
    ) internal returns (uint, MessagingReceipt memory) {
        // calculate refund token amount
        uint refundTokenAmount = (withdrawRequests[_params.mToken][
            _params.desEndId
        ][_params.refundToken][_params.indexInQueue].mTokenAmount *
            withdrawCheckpoints[_params.mToken][_params.desEndId][
                _params.refundToken
            ][_params.checkpointIndex].appliedRatio) / BASE;

        // encode OApp message
        bytes memory oappMessage = encodeOAppMessage(
            WithdrawOAppMessage({
                refundToken: _params.refundToken,
                refundTokenAmount: refundTokenAmount,
                decimals: MToken(_params.mToken).decimals(),
                refundTokenReceiver: _params.desTokenRefundReceiver
            })
        );

        address vault = refundPaths[_params.mToken][_params.desEndId][
            _params.refundToken
        ].vault;

        // peer end whitelist check
        _validate(
            peerEndRegistered(_params.desEndId, _addressToBytes32(vault)),
            9
        );

        // quote
        (uint256 nativeFee, uint256 lzTokenFee) = syncOApp.quote(
            _params.desEndId,
            _addressToBytes32(address(this)),
            _addressToBytes32(vault),
            oappMessage,
            _getOptions()
        );

        // send xcm
        MessagingReceipt memory receipt = syncOApp.send{value: nativeFee}(
            _params.desEndId,
            _addressToBytes32(vault),
            oappMessage,
            _getOptions()
        );

        return (refundTokenAmount, receipt);
    }

    // quote send fee
    function quote(ClaimParams calldata _params) public view returns (uint) {
        // calculate refund token amount
        uint refundTokenAmount = (withdrawRequests[_params.mToken][
            _params.desEndId
        ][_params.refundToken][_params.indexInQueue].mTokenAmount *
            withdrawCheckpoints[_params.mToken][_params.desEndId][
                _params.refundToken
            ][_params.checkpointIndex].appliedRatio) / BASE;

        // encode OApp message
        bytes memory oappMessage = encodeOAppMessage(
            WithdrawOAppMessage({
                refundToken: _params.refundToken,
                refundTokenAmount: refundTokenAmount,
                decimals: MToken(_params.mToken).decimals(),
                refundTokenReceiver: _params.desTokenRefundReceiver
            })
        );

        // quote
        (uint256 nativeFee, uint256 lzTokenFee) = syncOApp.quote(
            _params.desEndId,
            _addressToBytes32(address(this)),
            _addressToBytes32(
                refundPaths[_params.mToken][_params.desEndId][
                    _params.refundToken
                ].vault
            ),
            oappMessage,
            _getOptions()
        );

        return nativeFee;
    }

    function _claimSanityCheck(ClaimParams calldata _params) internal view {
        PathInfo memory pathInfo = refundPaths[_params.mToken][
            _params.desEndId
        ][_params.refundToken];

        // validate refund path registered
        _validate(pathInfo.registered, 5);

        // validate refund path not paused
        _validate(!pathInfo.withdrawPaused, 6);

        // validate vault not zero address
        _validate(
            refundPaths[_params.mToken][_params.desEndId][_params.refundToken]
                .vault != address(0),
            10
        );

        // validate indexInQueue is valid
        _validate(
            _params.indexInQueue <
                withdrawRequests[_params.mToken][_params.desEndId][
                    _params.refundToken
                ].length,
            11
        );

        WithdrawRequest memory withdrawRequest = withdrawRequests[
            _params.mToken
        ][_params.desEndId][_params.refundToken][_params.indexInQueue];

        // validate withdraw request not claimed
        _validate(!withdrawRequest.claimed, 12);

        // check checkpointIndex is valid
        _validate(
            _params.checkpointIndex <
                withdrawCheckpoints[_params.mToken][_params.desEndId][
                    _params.refundToken
                ].length,
            14
        );

        WithdrawCheckpoint memory checkpoint = withdrawCheckpoints[
            _params.mToken
        ][_params.desEndId][_params.refundToken][_params.checkpointIndex];

        // check indexInQueue is in the checkpoint range
        _validate(
            _params.indexInQueue >= checkpoint.startIndex &&
                _params.indexInQueue <= checkpoint.endIndex,
            15
        );

        // check wait period
        _validate(
            block.timestamp >=
                withdrawRequest.requestCreateTimestamp + pathInfo.waitPeriod,
            18
        );

        // check msg.sender is the account of the withdraw request
        _validate(msg.sender == withdrawRequest.account, 19);
    }

    function _addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    function _getOptions() internal pure returns (bytes memory) {
        return
            OptionsBuilder.newOptions().addExecutorLzReceiveOption(500000, 0);
    }

    // get withdraw request length
    function getWithdrawRequestLength(
        address _mToken,
        uint32 _desEndId,
        address _refundToken
    ) public view returns (uint) {
        // check registered
        _validate(refundPaths[_mToken][_desEndId][_refundToken].registered, 5);
        return withdrawRequests[_mToken][_desEndId][_refundToken].length;
    }

    // batch get path finalized mToken amount
    function batchGetFinalizedMTokenAmount(
        address[] calldata _mTokens
    ) external view returns (uint[] memory) {
        uint[] memory finalizedMTokenAmounts_ls = new uint[](_mTokens.length);
        for (uint i = 0; i < _mTokens.length; ++i) {
            finalizedMTokenAmounts_ls[i] = finalizedMTokenAmounts[_mTokens[i]];
        }
        return finalizedMTokenAmounts_ls;
    }

    // set ratio range guard
    function setRatioRangeGuard(
        address _mToken,
        uint _minRatio,
        uint _maxRatio
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // validate minRatio and maxRatio
        _validate(_minRatio <= _maxRatio, 20);

        mTokenRefundRatioGuard[_mToken] = RatioRange({
            minRatio: _minRatio,
            maxRatio: _maxRatio
        });

        emit RatioRangeGuardSet(_mToken, _minRatio, _maxRatio);
    }

    // receive function to receive potential refund of layerzero
    receive() external payable {}
}
