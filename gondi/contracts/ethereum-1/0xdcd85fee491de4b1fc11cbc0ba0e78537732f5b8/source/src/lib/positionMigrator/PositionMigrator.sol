// SPDX-License-Identifier: AGPL-3.0

pragma solidity ^0.8.24;

import "@openzeppelin/interfaces/IERC1271.sol";
import "@openzeppelin/utils/cryptography/ECDSA.sol";
import "@solmate/tokens/ERC20.sol";
import "@solmate/utils/SafeTransferLib.sol";
import {MultiSourceLoan} from "../../lib/loans/MultiSourceLoan.sol";
import {AddressManager} from "../AddressManager.sol";
import {IMultiSourceLoan} from "../../interfaces/loans/IMultiSourceLoan.sol";
import {IPositionMigrator} from "../../interfaces/positionMigrator/IPositionMigrator.sol";
import {InputChecker} from "../InputChecker.sol";
import {IAaveFlashLoanReceiver} from "../../interfaces/external/IAaveFlashLoanReceiver.sol";
import {MessageHashUtils} from "@openzeppelin/utils/cryptography/MessageHashUtils.sol";
import {IPoolAddressesProvider} from "@aave/interfaces/IPoolAddressesProvider.sol";

contract PositionMigrator is IPositionMigrator, IAaveFlashLoanReceiver {
    using InputChecker for address;
    using SafeTransferLib for ERC20;
    using MessageHashUtils for bytes32;
    using ECDSA for bytes32;

    /// @notice Used in compliance with EIP712
    uint256 internal immutable INITIAL_CHAIN_ID;
    bytes32 public immutable INITIAL_DOMAIN_SEPARATOR;

    bytes4 internal constant MAGICVALUE_1271 = 0x1626ba7e;

    string public name;
    bytes public constant VERSION = "1";

    mapping(address account => uint256 nonce) public getNonce;
    
    AddressManager internal immutable _addressManager;
    IPoolAddressesProvider internal immutable _aaveAddressProvider;

    constructor(string memory _name, address addressManager, address aaveAddressProvider) {
        name = _name;
        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = _computeDomainSeparator();
        _addressManager = AddressManager(addressManager);
        _aaveAddressProvider = IPoolAddressesProvider(aaveAddressProvider);
    }

    function smartMigrate(SmartMigrationArgs calldata args) external payable {
        if (getNonce[args.migrationArgs.migrator] != args.migrationArgs.nonce) {
            revert InvalidNonceError();
        }
        if (args.migrationArgs.migrator != msg.sender) {
            _checkSignature(args.migrationArgs.migrator, hash(args.migrationArgs), args.migratorSignature);
        }

        bytes memory params = abi.encode(args);
        uint256[] memory interestRateModes = new uint256[](args.migrationArgs.borrowArgs.assets.length);
        for (uint256 i = 0; i < interestRateModes.length; i++) {
            interestRateModes[i] = 0;
        }

        address aaveV3Pool = _aaveAddressProvider.getPool();
        if (address(args.migrationArgs.borrowArgs.pool) != aaveV3Pool) {
            revert InvalidPoolFlowError();
        }

        args.migrationArgs.borrowArgs.pool
            .flashLoan(
                address(this),
                args.migrationArgs.borrowArgs.assets,
                args.migrationArgs.borrowArgs.amounts,
                interestRateModes,
                address(this),
                params,
                0
            );

        // Send the remaining balance to the msg sender
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }

    // This function migrates a position with the help of a flash loan.
    // - recipient receives flash loan
    // - if recipient is this contract, approvals (to close position contract) for debt are set
    // - execute call to close position
    // - execute call to open position
    // - migrator repays debt to this contract
    // - flash loan is ended pulling debt from this contract
    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address initiator,
        bytes calldata params
    ) external override(IAaveFlashLoanReceiver) returns (bool) {
        SmartMigrationArgs memory args = abi.decode(params, (SmartMigrationArgs));

        PositionMigrationArgs memory migrationArgs = args.migrationArgs;

        address aaveV3Pool = _aaveAddressProvider.getPool();

        if (address(migrationArgs.borrowArgs.pool) != aaveV3Pool
            || msg.sender != aaveV3Pool
            || initiator != address(this)
        ) {
            revert InvalidPoolFlowError();
        }

        if (!_addressManager.isWhitelisted(migrationArgs.close.contractAddress) || !_addressManager.isWhitelisted(migrationArgs.open.contractAddress)) {
            revert NotWhitelistedAddressError();
        }

        if (migrationArgs.borrowArgs.recipient != address(this)) {
            // Send assets to the recipient so they can execute the call
            for (uint256 i = 0; i < assets.length; i++) {
                ERC20(assets[i]).safeTransfer(migrationArgs.borrowArgs.recipient, amounts[i]);
            }
        } else {
            if(!_addressManager.isWhitelisted(migrationArgs.approvalContract)) {
                revert NotWhitelistedAddressError();
            }
            // Approve assets to the close position contract so that we can execute the call
            for (uint256 i = 0; i < assets.length; i++) {
                ERC20(assets[i]).safeApprove(migrationArgs.approvalContract, amounts[i]);
            }
        }

        // Execute the close position arbitrary call
        (bool successClose,) =
            migrationArgs.close.contractAddress.call{value: migrationArgs.close.value}(migrationArgs.close.callData);
        if (!successClose) {
            revert TargetContractCallFailed();
        }

        // Execute the open position arbitrary call, migrator should have everything prepared
        (bool successOpen,) =
            migrationArgs.open.contractAddress.call{value: migrationArgs.open.value}(migrationArgs.open.callData);
        if (!successOpen) {
            revert TargetContractCallFailed();
        }

        // Recover assets + premiums to repay the flash loan
        for (uint256 i = 0; i < assets.length; i++) {
            ERC20 asset = ERC20(assets[i]);
            uint256 owed = amounts[i] + premiums[i];
            asset.safeTransferFrom(migrationArgs.migrator, address(this), owed);
            asset.safeApprove(address(migrationArgs.borrowArgs.pool), owed);
        }

        emit SmartMigration(migrationArgs.close.contractAddress, migrationArgs.open.contractAddress);

        return true;
    }

    function _checkSignature(address _signer, bytes32 _hash, bytes calldata _signature) private {
        bytes32 typedDataHash = DOMAIN_SEPARATOR().toTypedDataHash(_hash);

        if (_signer.code.length != 0) {
            if (IERC1271(_signer).isValidSignature(typedDataHash, _signature) != MAGICVALUE_1271) {
                revert InvalidSignatureError();
            }
        } else {
            address recovered = typedDataHash.recover(_signature);
            if (_signer != recovered) {
                revert InvalidSignatureError();
            }
        }
        getNonce[_signer]++;
    }

    /// @notice Get the domain separator requried to comply with EIP-712.
    function DOMAIN_SEPARATOR() public view returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : _computeDomainSeparator();
    }

    /// @notice Compute domain separator for EIP-712.
    /// @return The domain separator.
    function _computeDomainSeparator() private view returns (bytes32) {
        return keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(name)),
                keccak256(VERSION),
                block.chainid,
                address(this)
            )
        );
    }

    bytes32 private constant _AAVE_BORROW_ARGS_HASH =
        keccak256("AaveBorrowArgs(address pool,address recipient,address[] assets,uint256[] amounts)");

    bytes32 private constant _POSITION_HASH =
        keccak256("Position(address contractAddress,bytes callData,uint256 value)");

    bytes32 private constant _POSITION_MIGRATION_ARGS_HASH = keccak256(
        "PositionMigrationArgs(Position close,Position open,AaveBorrowArgs borrowArgs,address approvalContract,address migrator,uint256 nonce)AaveBorrowArgs(address pool,address recipient,address[] assets,uint256[] amounts)Position(address contractAddress,bytes callData,uint256 value)"
    );

    function hash(IPositionMigrator.Position memory _position) internal pure returns (bytes32) {
        return keccak256(abi.encode(_POSITION_HASH, _position.contractAddress, keccak256(_position.callData), _position.value));
    }

    function hash(IPositionMigrator.AaveBorrowArgs memory _borrowArgs) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                _AAVE_BORROW_ARGS_HASH,
                _borrowArgs.pool,
                _borrowArgs.recipient,
                keccak256(abi.encodePacked(_borrowArgs.assets)),
                keccak256(abi.encodePacked(_borrowArgs.amounts))
            )
        );
    }

    function hash(IPositionMigrator.PositionMigrationArgs memory _positionMigrationArgs)
        internal
        pure
        returns (bytes32)
    {
        return keccak256(
            abi.encode(
                _POSITION_MIGRATION_ARGS_HASH,
                hash(_positionMigrationArgs.close),
                hash(_positionMigrationArgs.open),
                hash(_positionMigrationArgs.borrowArgs),
                _positionMigrationArgs.approvalContract,
                _positionMigrationArgs.migrator,
                _positionMigrationArgs.nonce
            )
        );
    }
}
