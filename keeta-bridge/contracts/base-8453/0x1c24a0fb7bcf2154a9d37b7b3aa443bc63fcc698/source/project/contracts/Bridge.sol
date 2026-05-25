// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { ObserverManager } from './ObserverManager.sol';
import { TokenManager } from './TokenManager.sol';
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { EIP712 } from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import { IWETH } from './lib/IWETH.sol';
import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract Bridge is
    Ownable2Step,
    ObserverManager,
    TokenManager,
    EIP712,
    ReentrancyGuard
{
    using SafeERC20 for IERC20;

    struct WithdrawalParams {
        bytes32 sourceHash;
        address recipient;
        address token;
        uint256 amount;
    }

    bytes32 public constant WITHDRAWAL_TYPEHASH = keccak256("WithdrawalParams(bytes32 sourceHash,address recipient,address token,uint256 amount)");

    struct DepositParams {
        uint256 id;
        bytes dstAddress;
        address token;
        uint256 value;
    }

    struct DepositPermitParams {
        address from;
        uint256 deadline;
        DepositParams deposit;
    }

    bytes32 public constant DEPOSIT_TYPEHASH = keccak256("DepositParams(uint256 id,bytes dstAddress,address token,uint256 value)");
    bytes32 public constant DEPOSIT_PERMIT_TYPEHASH = keccak256("DepositPermitParams(address from,uint256 deadline,DepositParams deposit)DepositParams(uint256 id,bytes dstAddress,address token,uint256 value)");

    error ExistingSourceHash(bytes32 sourceHash);
    error InvalidDepositNonce(uint256 nonce);
    error InvalidDepositValue(uint256 value);
    error InvalidWithdrawValue(uint256 value);
    error InvalidWithdrawBatchArgs();
    error PermitIdUsed(address from, uint256 nonce);
    error PermitDeadlineExpired(uint256 deadline);
    error InvalidPermitSignature(address signer, address expected);

    event Deposit(
        uint256 indexed nonce,
        uint256 id,
        address indexed sender,
        address indexed token,
        bytes recipient,
        uint256 amount
    );

    event Withdrawal(
        address indexed recipient,
        address indexed token,
        bytes32 indexed sourceHash,
        uint256 amount
    );

    mapping(address => mapping(uint256 => bool)) public usedPermitNonces;

    mapping(bytes32 => bool) public usedSourceHashes;
    uint256 private _curNonce = 0;

    constructor(
        address[] memory _initialObservers,
        uint8 _initialObserverQuorum,
        address _wethContract
    )
        Ownable(msg.sender)
        ObserverManager(_initialObservers, _initialObserverQuorum)
        EIP712("KeetaBridge", "0.0.1")
        TokenManager(_wethContract)
    {
    }

    function _postDeposit(
        DepositParams memory _params,
        address _from
    ) private returns (uint256 nonce) {
        nonce = ++_curNonce;

        emit Deposit(nonce, _params.id, _from, _params.token, _params.dstAddress, _params.value);
    }

    function _preDepositCheck(address _token, uint256 _value) private view {
        _assertTokenAdded(_token);
        if (_value == 0) revert InvalidDepositValue(_value);
    }

    function _depositFrom(DepositParams calldata _params, address _from) internal returns(uint256 depositId) {
        _preDepositCheck(_params.token, _params.value);
        IERC20(_params.token).safeTransferFrom(_from, address(this), _params.value);
        depositId = _postDeposit(_params, _from);
    }

    function deposit(DepositParams calldata _params) external nonReentrant() returns(uint256 depositId) {
        depositId = _depositFrom(_params, msg.sender);
    }

    function permitDeposit(
        DepositPermitParams calldata _params,
        bytes calldata _signature
    ) external nonReentrant() returns(uint256 depositId) {
        if (block.timestamp > _params.deadline) revert PermitDeadlineExpired(_params.deadline);

        if (usedPermitNonces[_params.from][_params.deposit.id]) revert PermitIdUsed(_params.from, _params.deposit.id);
        usedPermitNonces[_params.from][_params.deposit.id] = true;

        bytes32 messageHash = _hashTypedDataV4(keccak256(abi.encode(
            DEPOSIT_PERMIT_TYPEHASH,
            _params.from,
            _params.deadline,
            keccak256(abi.encode(
                DEPOSIT_TYPEHASH,
                _params.deposit.id,
                keccak256(_params.deposit.dstAddress),
                _params.deposit.token,
                _params.deposit.value
            ))
        )));

        address signer = ECDSA.recover(messageHash, _signature);
        if (signer != _params.from) revert InvalidPermitSignature(signer, _params.from);

        depositId = _depositFrom(_params.deposit, _params.from);
    }

    function depositNative(uint256 _id, bytes calldata _dstAddress) external payable nonReentrant() returns(uint256 depositId) {
        _preDepositCheck(WETH_CONTRACT, msg.value);
        IWETH(WETH_CONTRACT).deposit{value: msg.value}();

        depositId = _postDeposit(DepositParams({
            id: _id,
            dstAddress: _dstAddress,
            token: WETH_CONTRACT,
            value: msg.value
        }), msg.sender);
    }

    function _withdraw(WithdrawalParams calldata _request, bytes calldata _signatures) private nonReentrant() {
        if (_request.amount == 0) revert InvalidWithdrawValue(0);

        bytes32 messageHash = _hashTypedDataV4(keccak256(abi.encode(
            WITHDRAWAL_TYPEHASH,
            _request.sourceHash,
            _request.recipient,
            _request.token,
            _request.amount
        )));
        assertObserverSignatures(messageHash, _signatures);

        if (usedSourceHashes[_request.sourceHash]) revert ExistingSourceHash(_request.sourceHash);
        usedSourceHashes[_request.sourceHash] = true;

        IERC20(_request.token).safeTransfer(_request.recipient, _request.amount);

        emit Withdrawal(_request.recipient, _request.token, _request.sourceHash, _request.amount);
    }

    function withdraw(WithdrawalParams calldata _request, bytes calldata _signatures) external {
        _withdraw(_request, _signatures);
    }

    function withdrawBatch(WithdrawalParams[] calldata _requests, uint8 _signersPerRequest, bytes calldata _signatures) external {
        if (_requests.length > 255) revert InvalidWithdrawBatchArgs();
        if (_signatures.length != (_signersPerRequest * _requests.length * 65)) revert InvalidWithdrawBatchArgs();

        for (uint8 i = 0; i < _requests.length; i++) {
            uint256 startIndex = uint256(i) * _signersPerRequest * 65;
            uint256 endIndex = (uint256(i) + 1) * _signersPerRequest * 65;
            _withdraw(_requests[i], _signatures[startIndex:endIndex]);
        }
    }

    function addToken(address _token) external onlyOwner {
        _addToken(_token);
    }

    function removeToken(address _token) external onlyOwner {
        _removeToken(_token);
    }

    function addObserver(address _observer) external onlyOwner {
        _addObserver(_observer);
    }

    function removeObserver(address _observer) external onlyOwner {
        _removeObserver(_observer);
    }

    function setObserverQuorum(uint8 _quorum) external onlyOwner {
        _setObserverQuorum(_quorum);
    }
}
