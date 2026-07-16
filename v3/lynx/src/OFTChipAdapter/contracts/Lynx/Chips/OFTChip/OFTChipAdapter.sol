// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTAdapter.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../../interfaces/ILzCreditControllerV1.sol";
import "../../interfaces/ILzDebitControllerV1.sol";

contract OFTChipAdapter is OFTAdapter {

    // ***** Events *****

    event IsSendPausedSet(bool isPaused);

    event CreditControllerSet(address indexed previousController, address indexed newController);
    event DebitControllerSet(address indexed previousController, address indexed newController);

    event UnderlyingRecoveryRenounced();
    event UnderlyingRecovered(address indexed receiver, uint256 amount);
    event TokensSwept(address indexed token, address indexed receiver, uint256 amount);

    // ***** Storage *****

    bool public isSendPaused;
    bool public isUnderlyingRecoveryRenounced;

    ILzCreditControllerV1 public creditController;
    ILzDebitControllerV1 public debitController;

    // ***** Constructor *****

    constructor(
        address _token, // a deployed, already existing ERC20 token address
        address _layerZeroEndpoint, // local endpoint address
        address _owner // token owner
    ) OFTAdapter(_token, _layerZeroEndpoint, _owner) {}

    // ***** Admin Functions *****

    function setIsSendPaused(bool _isPaused) external onlyOwner {
        bool currentState = isSendPaused;

        require(_isPaused != currentState, "ALREADY_SET");

        isSendPaused = _isPaused;

        emit IsSendPausedSet(_isPaused);
    }

    function setCreditController(ILzCreditControllerV1 _creditController) external onlyOwner {
        // Sanity
        require(address(_creditController) == address(0) || _creditController.isCreditController(), "NOT_CREDIT_CONTROLLER");

        address previousController = address(creditController);

        require(previousController != address(_creditController), "ALREADY_SET");

        creditController = _creditController;

        emit CreditControllerSet(previousController, address(_creditController));
    }

    function setDebitController(ILzDebitControllerV1 _debitController) external onlyOwner {
        // Sanity
        require(address(_debitController) == address(0) || _debitController.isDebitController(), "NOT_DEBIT_CONTROLLER");

        address previousController = address(debitController);

        require(previousController != address(_debitController), "ALREADY_SET");

        debitController = _debitController;

        emit DebitControllerSet(previousController, address(_debitController));
    }

    function renounceUnderlyingRecovery() external onlyOwner {
        require(!isUnderlyingRecoveryRenounced, "ALREADY_RENOUNCED");
        isUnderlyingRecoveryRenounced = true;
        emit UnderlyingRecoveryRenounced();
    }

    function recoverUnderlying(uint256 _amount) external onlyOwner {
        require(!isUnderlyingRecoveryRenounced, "UNDERLYING_RECOVERY_RENOUNCED");

        innerToken.transfer(owner(), _amount);

        emit UnderlyingRecovered(owner(), _amount);
    }

    function sweepTokens(IERC20 _token, uint256 _amount) external onlyOwner {
        require(address(_token) != address(innerToken), "CANNOT_SWEEP_ADAPTER_TOKEN");

        _token.transfer(owner(), _amount);

        emit TokensSwept(address(_token), owner(), _amount);
    }

    // ***** Lz Functions *****

    function _credit(
        address _to,
        uint256 _amountToCreditLD,
        uint32 _srcEid
    ) internal virtual override returns (uint256 amountReceivedLD) {

        ILzCreditControllerV1 creditController_ = creditController;
        if (address(creditController_) != address(0)) {
            try
            creditController_.informLzCreditRequest(_to, _amountToCreditLD, _srcEid)
            {} catch {}
        }

        return super._credit(_to, _amountToCreditLD, _srcEid);
    }

    function _debit(
        uint256 _amountToSendLD, // amount to send in local decimals()
        uint256 _minAmountToCreditLD, // minimum amount to credit on the destination
        uint32 _dstEid // destination endpoint id
    ) internal virtual override returns (uint256 amountDebitedLD, uint256 amountToCreditLD) {
        require(!isSendPaused, "SEND_PAUSED");

        ILzDebitControllerV1 debitController_ = debitController;
        if (address(debitController_) != address(0)) {
            require(debitController_.informLzDebitRequest(_amountToSendLD, _minAmountToCreditLD, _dstEid), "DEBIT_NOT_APPROVED");
        }

        return super._debit(_amountToSendLD, _minAmountToCreditLD, _dstEid);
    }
}
