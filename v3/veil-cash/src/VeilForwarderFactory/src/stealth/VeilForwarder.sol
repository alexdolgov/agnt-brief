// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

interface IVeilForwarderFactory {
    function relayer() external view returns (address);
}

interface IVeilForwarderEntry {
    function queueEthFor(bytes calldata _depositKey) external payable;
    function queueUSDCFor(uint256 _amount, bytes calldata _depositKey) external;
}

/// @title VeilForwarder
/// @notice Persistent single-use address deployed by CREATE2 factory.
/// @dev Sweeps are relayer-gated via factory and withdrawals require EIP-712 owner signature.
contract VeilForwarder is EIP712 {
    using SafeERC20 for IERC20;

    error ZeroAddress();
    error ZeroAmount();
    error InvalidDepositKey();
    error NotRelayer();
    error NoETHBalance();
    error NoTokenBalance();
    error TokenApproveFailed();
    error ETHTransferFailed();
    error NonceUsed();
    error Unauthorized();
    error DeadlineExpired();

    bytes32 private constant WITHDRAW_TYPEHASH =
        keccak256("Withdraw(address token,address to,uint256 amount,uint256 nonce,uint256 deadline)");

    string public constant CONTRACT_VERSION = "1";

    address public immutable factory;
    IVeilForwarderEntry public immutable entry;
    address public immutable owner;
    address public immutable usdc;
    bytes public childDepositKey;

    mapping(uint256 => bool) public usedNonces;

    event Swept(address indexed token, uint256 amount);
    event Withdrawn(address indexed token, address indexed to, uint256 amount);

    modifier onlyRelayer() {
        if (msg.sender != IVeilForwarderFactory(factory).relayer()) revert NotRelayer();
        _;
    }

    constructor(address _factory, address payable _entry, bytes memory _childDepositKey, address _owner, address _usdc)
        EIP712("VeilForwarder", CONTRACT_VERSION)
    {
        if (_factory == address(0) || _entry == address(0) || _owner == address(0) || _usdc == address(0)) {
            revert ZeroAddress();
        }
        if (_childDepositKey.length != 64) revert InvalidDepositKey();

        factory = _factory;
        entry = IVeilForwarderEntry(_entry);
        childDepositKey = _childDepositKey;
        owner = _owner;
        usdc = _usdc;
    }

    function sweepETH() external onlyRelayer {
        uint256 bal = address(this).balance;
        if (bal == 0) revert NoETHBalance();

        entry.queueEthFor{value: bal}(childDepositKey);
        emit Swept(address(0), bal);
    }

    function sweepUSDC() external onlyRelayer {
        uint256 bal = IERC20(usdc).balanceOf(address(this));
        if (bal == 0) revert NoTokenBalance();

        bool approveSuccess = IERC20(usdc).approve(address(entry), bal);
        if (!approveSuccess) revert TokenApproveFailed();

        entry.queueUSDCFor(bal, childDepositKey);
        emit Swept(usdc, bal);
    }

    function withdraw(
        address _token,
        address _to,
        uint256 _amount,
        uint256 _nonce,
        uint256 _deadline,
        bytes calldata _signature
    ) external {
        if (_to == address(0)) revert ZeroAddress();
        if (_amount == 0) revert ZeroAmount();
        if (block.timestamp > _deadline) revert DeadlineExpired();
        if (usedNonces[_nonce]) revert NonceUsed();

        bytes32 structHash = keccak256(abi.encode(WITHDRAW_TYPEHASH, _token, _to, _amount, _nonce, _deadline));
        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = ECDSA.recover(digest, _signature);

        if (signer != owner) revert Unauthorized();

        usedNonces[_nonce] = true;

        if (_token == address(0)) {
            (bool ok,) = _to.call{value: _amount}("");
            if (!ok) revert ETHTransferFailed();
        } else {
            IERC20(_token).safeTransfer(_to, _amount);
        }

        emit Withdrawn(_token, _to, _amount);
    }

    receive() external payable {}
}
