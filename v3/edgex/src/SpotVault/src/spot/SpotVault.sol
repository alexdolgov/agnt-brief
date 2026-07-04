// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import {IPerpVault} from "../interfaces/IPerpVault.sol";

interface IArbSys {
    function withdrawEth(address destination) external payable returns (uint256);
}

interface IL2Gateway {
    function outboundTransfer(address _l1Token, address _to, uint256 _amount, bytes calldata _data)
        external
        returns (bytes memory);
}

/// @title SpotVault
/// @notice Two-of-two multisignature vault supporting ETH and ERC20 deposits with optional permit flows.
/// @dev Signer set can be updated by the owner; withdrawals require unanimous approval from both signers.
contract SpotVault is ReentrancyGuard, Ownable, Pausable {
    using SafeERC20 for IERC20;

    uint256 private constant SIGNER_COUNT = 2;
    uint256 private constant SIGNATURE_THRESHOLD = 2;
    address private constant NATIVE_TOKEN = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    IArbSys private immutable ARBSYS;
    IL2Gateway private immutable L2_GATEWAY;

    /// @notice Emitted when a user deposits funds into the vault.
    event Deposit(address indexed from, address indexed token, uint256 amount, uint256 accountId);
    /// @notice Emitted when a user deposits funds into the vault by permit.
    event DepositWithPermit(address indexed from, address indexed token, uint256 amount);
    /// @notice Emitted when a withdrawal is executed.
    event Withdraw(
        uint256 indexed clientWithdrawId,
        address indexed token,
        address indexed to,
        uint256 amount,
        bool isWithdrawToArb
    );
    /// @notice Emitted when funds are transferred to PerpVault.
    event TransferToPerp(
        uint256 indexed clientWithdrawId,
        address indexed token,
        address indexed perpVault,
        uint256 amount,
        uint256 toAccountId,
        uint256 starkKey
    );
    /// @notice Emitted whenever the authorized signer set changes.
    event SignersConfigured(address indexed signer0, address indexed signer1);
    /// @notice Emitted when the withdraw-to-Arb switch is toggled.
    event WithdrawToArbStatusUpdated(bool enabled);
    /// @notice Emitted when the owner rescues funds.
    event EmergencyWithdraw(address indexed token, address indexed to, uint256 amount);
    /// @notice Emitted when a cross-chain token mapping is added or updated.
    event CrossChainTokenAddressAdded(address indexed edgeToken, address indexed arbToken);
    /// @notice Emitted when the PerpVault destination is updated.
    event PerpVaultUpdated(address indexed previousPerpVault, address indexed newPerpVault);

    /// @dev Error definitions provide precise failure reasons for wallet operations.
    error InvalidSignerCount(uint256 provided, uint256 expected);
    error ZeroSignerAddress(uint256 index);
    error DuplicateSigner(address signer);
    error UnexpectedNativeValue(uint256 provided);
    error InvalidNativeAmount(uint256 expected, uint256 provided);
    error SignatureLengthMismatch(uint256 signers, uint256 signatures);
    error InsufficientSigners(uint256 provided, uint256 required);
    error TransactionExpired(uint256 expiration, uint256 current);
    error SignerMismatch(uint256 index, address expected, address actual);
    error SignerNotAuthorized(address signer);
    error OrderAlreadyExecuted(bytes32 withdrawalHash);
    error NativeTransferFailed(address to, uint256 amount);
    error NativeTokenNotSupported();
    error ZeroPerpVault();
    error UnsupportedToken(address token);
    error InvalidUserSignature(address expected, address actual);
    error WithdrawToArbDisabled();
    error ZeroOwner();
    error ZeroRecipient();
    error InsufficientBalance(uint256 available, uint256 requested);
    error ZeroTokenAddress();
    error ZeroCrossChainContract();
    error CrossChainTokenAddressMissing(address edgeToken);
    error WithdrawToArbNotEnabled();
    error TransferAmountMismatch(uint256 expected, uint256 actual);

    struct WithdrawalOrder {
        address to;
        uint256 amount;
        address token;
        bool executed;
    }

    /// @notice Current list of authorized signers.
    address[] public signers;
    /// @dev Tracks whether an address is an authorized signer for constant-time lookups.
    mapping(address => bool) private signerStatus;
    /// @dev Records processed withdrawal orders to prevent replay.
    mapping(bytes32 => WithdrawalOrder) private orders;
    /// @dev Token address mapping between EDGE and ARB
    mapping(address edgeTokenAddress => address arbTokenAddress) private crossChainTokenAddressMap;
    /// @notice Flag controlling whether withdraw to ARB are allowed.
    bool public enableWithdrawToArb;
    /// @notice Destination PerpVault used for cross-product transfers.
    address public perpVault = address(0);

    /// @notice Deploys the vault with an exact set of two unique signers.
    /// @param allowedSigners The signer addresses that control the vault.
    /// @param edgeUsdc Token address on Edge network to seed the cross-chain map.
    /// @param arbUsdc Token address on Arbitrum network corresponding to `edgeUsdc`.
    /// @param arbSys Address of the ArbSys precompile on the deployment network.
    /// @param l2Gateway Address of the Arbitrum L2 gateway contract used for outbound transfers.
    /// @param owner_ Address that will receive ownership of the vault controls.
    constructor(
        address[] memory allowedSigners,
        address edgeUsdc,
        address arbUsdc,
        address arbSys,
        address l2Gateway,
        address owner_
    ) {
        _setSigners(allowedSigners);
        if (owner_ == address(0)) {
            revert ZeroOwner();
        }

        if (edgeUsdc == address(0) || arbUsdc == address(0)) {
            revert ZeroTokenAddress();
        }

        if (arbSys == address(0) || l2Gateway == address(0)) {
            revert ZeroCrossChainContract();
        }

        ARBSYS = IArbSys(arbSys);
        L2_GATEWAY = IL2Gateway(l2Gateway);

        enableWithdrawToArb = true;
        crossChainTokenAddressMap[edgeUsdc] = arbUsdc;
        emit CrossChainTokenAddressAdded(edgeUsdc, arbUsdc);
        _transferOwnership(owner_);
    }

    /// @notice Accepts plain ETH transfers.
    receive() external payable {}

    /// @notice Deposits ETH or ERC20 tokens into the vault.
    /// @dev When depositing ETH, `token` must equal the sentinel native token address.
    /// @param token Address of the asset to deposit (native sentinel for ETH).
    /// @param amount Amount of tokens or wei to deposit.
    /// @param accountId Off-chain account identifier emitted for indexing.
    function deposit(address token, uint256 amount, uint256 accountId) external payable nonReentrant whenNotPaused {
        if (_isNative(token)) {
            if (msg.value != amount) {
                revert InvalidNativeAmount(amount, msg.value);
            }
        } else {
            if (msg.value != 0) {
                revert UnexpectedNativeValue(msg.value);
            }
            IERC20 tokenContract = IERC20(token);
            uint256 balanceBefore = tokenContract.balanceOf(address(this));
            tokenContract.safeTransferFrom(msg.sender, address(this), amount);
            uint256 received = tokenContract.balanceOf(address(this)) - balanceBefore;
            if (received != amount) {
                revert TransferAmountMismatch(amount, received);
            }
        }

        emit Deposit(msg.sender, token, amount, accountId);
    }

    /// @notice Deposits ERC20 tokens using EIP-2612 permit authorization.
    /// @param token Address of the ERC20 token supporting permit.
    /// @param amount Amount of tokens to transfer.
    /// @param owner Token owner granting approval via permit.
    /// @param deadline Permit expiration timestamp.
    /// @param v Signature v component.
    /// @param r Signature r component.
    /// @param s Signature s component.
    function depositErc20WithPermit(
        address token,
        uint256 amount,
        address owner,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external nonReentrant whenNotPaused {
        if (_isNative(token)) {
            revert NativeTokenNotSupported();
        }

        IERC20Permit(token).permit(owner, address(this), amount, deadline, v, r, s);
        IERC20 tokenContract = IERC20(token);
        uint256 balanceBefore = tokenContract.balanceOf(address(this));
        tokenContract.safeTransferFrom(owner, address(this), amount);
        uint256 received = tokenContract.balanceOf(address(this)) - balanceBefore;
        if (received != amount) {
            revert TransferAmountMismatch(amount, received);
        }

        emit DepositWithPermit(owner, token, amount);
    }

    /// @notice Executes a withdrawal after verifying the provided signatures.
    /// @param to Recipient of the withdrawal.
    /// @param amount Amount of tokens or wei to withdraw.
    /// @param token Asset being withdrawn.
    /// @param expireTime Absolute timestamp after which the withdrawal is invalid.
    /// @param clientWithdrawId Unique order identifier preventing replay.
    /// @param allSigners Signers corresponding to each provided signature.
    /// @param signatures Signatures authorizing the withdrawal.
    function withdraw(
        address to,
        uint256 amount,
        address token,
        uint256 expireTime,
        uint256 clientWithdrawId,
        bool isWithdrawToArb,
        address[] memory allSigners,
        bytes[] memory signatures
    ) external nonReentrant whenNotPaused {
        if (to == address(0)) {
            revert ZeroRecipient();
        }

        uint256 signerCount = allSigners.length;

        if (signerCount < SIGNATURE_THRESHOLD) {
            revert InsufficientSigners(signerCount, SIGNATURE_THRESHOLD);
        }

        if (signerCount != signatures.length) {
            revert SignatureLengthMismatch(signerCount, signatures.length);
        }

        _ensureDistinctSigners(allSigners);

        if (expireTime < block.timestamp) {
            revert TransactionExpired(expireTime, block.timestamp);
        }

        bytes32 operationHash =
            withdrawalSigHash(to, amount, token, expireTime, clientWithdrawId, block.chainid, isWithdrawToArb);
        bytes32 ethSignedHash = ECDSA.toEthSignedMessageHash(operationHash);

        for (uint256 index = 0; index < signerCount; ++index) {
            address expectedSigner = allSigners[index];
            address recoveredSigner = ECDSA.recover(ethSignedHash, signatures[index]);

            if (recoveredSigner != expectedSigner) {
                revert SignerMismatch(index, expectedSigner, recoveredSigner);
            }

            if (!signerStatus[recoveredSigner]) {
                revert SignerNotAuthorized(recoveredSigner);
            }
        }

        _recordOrder(operationHash, to, amount, token);

        if (isWithdrawToArb) {
            if (!enableWithdrawToArb) {
                revert WithdrawToArbNotEnabled();
            }

            if (_isNative(token)) {
                ARBSYS.withdrawEth{value: amount}(to);
            } else {
                address arbTokenAddress = crossChainTokenAddressMap[token];
                if (arbTokenAddress == address(0)) {
                    revert CrossChainTokenAddressMissing(token);
                }

                L2_GATEWAY.outboundTransfer(arbTokenAddress, to, amount, "");
            }
        } else {
            if (_isNative(token)) {
                _transferNative(to, amount);
            } else {
                IERC20(token).safeTransfer(to, amount);
            }
        }

        emit Withdraw(clientWithdrawId, token, to, amount, isWithdrawToArb);
    }

    /// @notice Transfers USDT from this SpotVault directly into a PerpVault position after signature checks.
    /// @dev Prevents router frontrunning by binding destination position to the signed payload.
    /// @param token Asset being transferred (must match PerpVault.USDT_ADDRESS()).
    /// @param amount Amount of tokens to transfer.
    /// @param expireTime Absolute timestamp after which the operation is invalid.
    /// @param clientWithdrawId Unique identifier preventing replay.
    /// @param toAccountId Target PerpVault position id.
    /// @param starkKey Stark key of the destination Perp account.
    /// @param allSigners Signers corresponding to each provided signature.
    /// @param signatures Signatures authorizing the transfer.
    function transferToPerp(
        address token,
        uint256 amount,
        uint256 expireTime,
        uint256 clientWithdrawId,
        uint256 toAccountId,
        uint256 starkKey,
        address[] memory allSigners,
        bytes[] memory signatures
    ) external nonReentrant whenNotPaused {
        if (perpVault == address(0)) {
            revert ZeroPerpVault();
        }

        if (!enableWithdrawToArb) {
            revert WithdrawToArbDisabled();
        }

        uint256 signerCount = allSigners.length;
        if (signerCount < SIGNATURE_THRESHOLD) {
            revert InsufficientSigners(signerCount, SIGNATURE_THRESHOLD);
        }

        if (signerCount != signatures.length) {
            revert SignatureLengthMismatch(signerCount, signatures.length);
        }

        _ensureDistinctSigners(allSigners);

        if (expireTime < block.timestamp) {
            revert TransactionExpired(expireTime, block.timestamp);
        }

        if (_isNative(token)) {
            revert NativeTokenNotSupported();
        }

        address usdt = IPerpVault(perpVault).USDT_ADDRESS();
        if (token != usdt) {
            revert UnsupportedToken(token);
        }

        bytes32 operationHash =
            transferToPerpSigHash(token, amount, expireTime, clientWithdrawId, toAccountId, starkKey, block.chainid);
        bytes32 ethSignedHash = ECDSA.toEthSignedMessageHash(operationHash);

        for (uint256 index = 0; index < signerCount; ++index) {
            address expectedSigner = allSigners[index];
            address recoveredSigner = ECDSA.recover(ethSignedHash, signatures[index]);

            if (recoveredSigner != expectedSigner) {
                revert SignerMismatch(index, expectedSigner, recoveredSigner);
            }

            if (!signerStatus[recoveredSigner]) {
                revert SignerNotAuthorized(recoveredSigner);
            }
        }

        _recordOrder(operationHash, perpVault, amount, token);

        IERC20(token).safeApprove(perpVault, 0);
        IERC20(token).safeApprove(perpVault, amount);

        IPerpVault(perpVault).deposit(IERC20(token), amount, starkKey, toAccountId, "");

        // Clear allowance to reduce residual approval surface area
        IERC20(token).safeApprove(perpVault, 0);

        emit TransferToPerp(clientWithdrawId, token, perpVault, amount, toAccountId, starkKey);
    }

    /// @notice Returns the hash that signers must authorize for a transfer to PerpVault.
    function transferToPerpSigHash(
        address token,
        uint256 amount,
        uint256 expireTime,
        uint256 clientWithdrawId,
        uint256 toAccountId,
        uint256 starkKey,
        uint256 chainId
    ) public view returns (bytes32) {
        return keccak256(
            abi.encodePacked(
                "TRANSFER_TO_PERP",
                perpVault,
                token,
                amount,
                expireTime,
                clientWithdrawId,
                toAccountId,
                starkKey,
                address(this),
                chainId
            )
        );
    }

    /// @notice Checks whether an address is part of the authorized signer set.
    function isAllowedSigner(address signer) public view returns (bool) {
        return signerStatus[signer];
    }

    /// @notice Returns the hash that signers must authorize for a withdrawal.
    function withdrawalSigHash(
        address to,
        uint256 amount,
        address token,
        uint256 expireTime,
        uint256 clientWithdrawId,
        uint256 chainId,
        bool isWithdrawToArb
    ) public view returns (bytes32) {
        return keccak256(
            abi.encodePacked(
                "ERC20", to, amount, token, expireTime, clientWithdrawId, address(this), chainId, isWithdrawToArb
            )
        );
    }

    /// @notice Allows the owner to toggle the withdraw-to-Arb feature.
    function setEnableWithdrawToArb(bool enabled) external onlyOwner {
        enableWithdrawToArb = enabled;
        emit WithdrawToArbStatusUpdated(enabled);
    }

    /// @notice Adds or updates a cross-chain token mapping.
    /// @param edgeToken Token address on the Edge network.
    /// @param arbToken Token address on Arbitrum.
    function addCrossChainTokenAddress(address edgeToken, address arbToken) external onlyOwner {
        if (edgeToken == address(0) || arbToken == address(0)) {
            revert ZeroTokenAddress();
        }

        crossChainTokenAddressMap[edgeToken] = arbToken;
        emit CrossChainTokenAddressAdded(edgeToken, arbToken);
    }

    /// @notice Allows the owner to update the destination PerpVault.
    function setPerpVault(address newPerpVault) external onlyOwner {
        _setPerpVault(newPerpVault);
    }

    /// @notice Allows the owner to rotate the signer set.
    /// @param newSigners Replacement signer list; must contain exactly two distinct non-zero addresses.
    function setSigners(address[] calldata newSigners) external onlyOwner {
        _setSigners(newSigners);
    }

    /// @notice Allows the owner to pause deposits and withdrawals.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Allows the owner to resume deposits and withdrawals.
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Allows the owner to rescue either native ETH or ERC20 tokens.
    /// @param token Address of the asset to rescue (native sentinel for ETH).
    /// @param amount Amount to withdraw; withdraws full balance when zero.
    /// @param to Recipient of the rescued funds.
    function emergencyWithdraw(address token, uint256 amount, address to) external onlyOwner nonReentrant {
        if (to == address(0)) {
            revert ZeroRecipient();
        }

        uint256 transferAmount = amount;
        if (_isNative(token)) {
            uint256 balance = address(this).balance;
            if (transferAmount == 0) {
                transferAmount = balance;
            }
            if (transferAmount > balance) {
                revert InsufficientBalance(balance, transferAmount);
            }
            _transferNative(to, transferAmount);
        } else {
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (transferAmount == 0) {
                transferAmount = balance;
            }
            if (transferAmount > balance) {
                revert InsufficientBalance(balance, transferAmount);
            }
            IERC20(token).safeTransfer(to, transferAmount);
        }

        emit EmergencyWithdraw(token, to, transferAmount);
    }

    /// @dev Records a withdrawal order and reverts if the identifier was already used.
    function _recordOrder(bytes32 orderHash, address to, uint256 amount, address token) private {
        WithdrawalOrder storage order = orders[orderHash];
        if (order.executed) {
            revert OrderAlreadyExecuted(orderHash);
        }

        order.executed = true;
        order.to = to;
        order.amount = amount;
        order.token = token;
    }

    /// @dev Checks whether the provided token denotes the configured native sentinel.
    function _isNative(address token) private pure returns (bool) {
        return token == NATIVE_TOKEN;
    }

    /// @dev Sends native ETH to the recipient and reverts if the transfer fails.
    function _transferNative(address to, uint256 amount) private {
        (bool success,) = to.call{value: amount}("");
        if (!success) {
            revert NativeTransferFailed(to, amount);
        }
    }

    /// @dev Updates the PerpVault destination after validating the address.
    function _setPerpVault(address newPerpVault) private {
        if (newPerpVault == address(0)) {
            revert ZeroPerpVault();
        }

        address previousPerpVault = perpVault;
        perpVault = newPerpVault;
        emit PerpVaultUpdated(previousPerpVault, newPerpVault);
    }

    /// @dev Updates the signer set and keeps the mapping in sync.
    function _setSigners(address[] memory allowedSigners) private {
        uint256 length = allowedSigners.length;
        if (length != SIGNER_COUNT) {
            revert InvalidSignerCount(length, SIGNER_COUNT);
        }

        _ensureDistinctSigners(allowedSigners);

        for (uint256 i = 0; i < signers.length; ++i) {
            signerStatus[signers[i]] = false;
        }

        delete signers;

        for (uint256 i = 0; i < length; ++i) {
            address signer = allowedSigners[i];
            if (signer == address(0)) {
                revert ZeroSignerAddress(i);
            }
            signers.push(signer);
            signerStatus[signer] = true;
        }

        emit SignersConfigured(signers[0], signers[1]);
    }

    /// @dev Ensures that the provided addresses are distinct.
    function _ensureDistinctSigners(address[] memory accounts) private pure {
        uint256 length = accounts.length;
        for (uint256 i = 0; i < length; ++i) {
            address current = accounts[i];
            for (uint256 j = i + 1; j < length; ++j) {
                if (current == accounts[j]) {
                    revert DuplicateSigner(current);
                }
            }
        }
    }
}
