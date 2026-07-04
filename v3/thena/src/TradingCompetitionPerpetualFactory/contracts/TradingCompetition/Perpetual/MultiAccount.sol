// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/ISymmio.sol";
import "./interfaces/ISymmioPartyA.sol";
import "./interfaces/IMultiAccount.sol";

contract MultiAccount is
    IMultiAccount,
    Initializable,
    Pausable,
    AccessControl
{
    using SafeERC20 for IERC20;

    // Defining roles for access control
    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

    // State variables
    mapping(address => Account[]) public accounts; // User to their accounts mapping
    mapping(address => uint256) public indexOfAccount; // Account to its index mapping
    mapping(address => address) public owners; // Account to its owner mapping
    mapping(address => mapping(address => mapping(bytes4 => bool))) public delegatedAccesses; // account -> target -> selector -> state

    address public accountsAdmin; // Admin address for the contract
    address public symmioAddress; // Address of the Symmio platform
    uint256 public saltCounter; // Counter for generating unique addresses with create2
    bytes public accountImplementation;

   
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin,
        address symmioAddress_,
        bytes memory accountImplementation_
    ) public initializer {

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(PAUSER_ROLE, admin);
        _grantRole(UNPAUSER_ROLE, admin);
        _grantRole(SETTER_ROLE, admin);
        accountsAdmin = admin;
        symmioAddress = symmioAddress_;
        accountImplementation = accountImplementation_;
    }

    
    function delegateAccess(address account, address target, bytes4 selector, bool state) external {
        _onlyOwner(account, msg.sender);
        if(target == msg.sender && target == account) revert InvalidTarget();
        emit DelegateAccess(account, target, selector, state);
        delegatedAccesses[account][target][selector] = state;
    }

    function delegateAccesses(address account, address target, bytes4[] memory selector, bool state) external {
        _onlyOwner(account, msg.sender);
        if(target == msg.sender && target == account) revert InvalidTarget();
        for (uint256 i = selector.length; i != 0; i--) {
            delegatedAccesses[account][target][selector[i - 1]] = state;
            emit DelegateAccess(account, target, selector[i - 1], state);
        }
    }

    function setAccountImplementation(
        bytes memory accountImplementation_
    ) external onlyRole(SETTER_ROLE) {
        emit SetAccountImplementation(
            accountImplementation,
            accountImplementation_
        );
        accountImplementation = accountImplementation_;
    }

    function setSymmioAddress(address addr) external onlyRole(SETTER_ROLE) {
        emit SetSymmioAddress(symmioAddress, addr);
        symmioAddress = addr;
    }

    function _deployPartyA() internal returns (address account) {
        bytes32 salt = keccak256(
            abi.encodePacked("MultiAccount_", saltCounter)
        );
        saltCounter += 1;

        bytes memory bytecode = abi.encodePacked(
            accountImplementation,
            abi.encode(accountsAdmin, address(this), symmioAddress)
        );
        account = _deployContract(bytecode, salt);
        return account;
    }

    function _deployContract(
        bytes memory bytecode,
        bytes32 salt
    ) internal returns (address contractAddress) {
        assembly {
            contractAddress := create2(
                0,
                add(bytecode, 32),
                mload(bytecode),
                salt
            )
        }
        if(contractAddress == address(0)) revert Create2Failed();
        emit DeployContract(msg.sender, contractAddress);
        return contractAddress;
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(UNPAUSER_ROLE) {
        _unpause();
    }

    //////////////////////////////// Account Management ////////////////////////////////////

    function addAccount(string memory name) external virtual whenNotPaused {
        address account = _deployPartyA();
        indexOfAccount[account] = accounts[msg.sender].length;
        accounts[msg.sender].push(Account(account, name));
        owners[account] = msg.sender;
        emit AddAccount(msg.sender, account, name);
    }

    function editAccountName(
        address accountAddress,
        string memory name
    ) external whenNotPaused {
        uint256 index = indexOfAccount[accountAddress];
        accounts[msg.sender][index].name = name;
        emit EditAccountName(msg.sender, accountAddress, name);
    }

    function depositForAccount(
        address account,
        uint256 amount
    ) external virtual whenNotPaused {
        _onlyOwner(account, msg.sender);
        address collateral = ISymmio(symmioAddress).getCollateral();
        IERC20(collateral).safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );
        IERC20(collateral).safeApprove(symmioAddress, amount);
        ISymmio(symmioAddress).depositFor(account, amount);
        emit DepositForAccount(msg.sender, account, amount);
    }

    function depositAndAllocateForAccount(
        address account,
        uint256 amount
    ) external virtual whenNotPaused {
        _onlyOwner(account, msg.sender);
        address collateral = ISymmio(symmioAddress).getCollateral();
        IERC20(collateral).safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );
        IERC20(collateral).safeApprove(symmioAddress, amount);
        ISymmio(symmioAddress).depositFor(account, amount);
        bytes memory _callData = abi.encodeWithSignature(
            "allocate(uint256)",
            amount
        );
        innerCall(account, _callData);
        emit AllocateForAccount(msg.sender, account, amount);
        emit DepositForAccount(msg.sender, account, amount);
    }

    function withdrawFromAccount(
        address account,
        uint256 amount
    ) external virtual whenNotPaused {
        _onlyOwner(account, msg.sender);
        bytes memory _callData = abi.encodeWithSignature(
            "withdrawTo(address,uint256)",
            owners[account],
            amount
        );
        emit WithdrawFromAccount(msg.sender, account, amount);
        innerCall(account, _callData);
    }


    function innerCall(address account, bytes memory _callData) internal {
        (bool _success, bytes memory _resultData) = ISymmioPartyA(account)._call(_callData);
        emit Call(msg.sender, account, _callData, _success, _resultData);
        if(!_success) revert CallFailed(); 
    }

    function _call(
        address account,
        bytes[] memory _callDatas
    ) public whenNotPaused {
        bool isOwner = owners[account] == msg.sender;
        for (uint8 i; i < _callDatas.length; i++) {
            bytes memory _callData = _callDatas[i];
            if (!isOwner) {
                if(_callData.length < 4) revert CallDataLen();
                bytes4 functionSelector;
                assembly {
                    functionSelector := mload(add(_callData, 0x20))
                }
                if(!delegatedAccesses[account][msg.sender][functionSelector]) revert NotAuthorized();
            }
            innerCall(account, _callData);
        }
    }

    
    function _onlyOwner(address account, address sender) internal view {
        if(owners[account] != sender) revert NotAccountOwner();
    }


    //////////////////////////////// VIEWS ////////////////////////////////////

    function getAccountsLength(address user) external view returns (uint256) {
        return accounts[user].length;
    }

    function getAccounts(
        address user,
        uint256 start,
        uint256 size
    ) external view returns (Account[] memory) {
        uint256 len = size > accounts[user].length - start
            ? accounts[user].length - start
            : size;
        Account[] memory userAccounts = new Account[](len);
        for (uint256 i = start; i < start + len; i++) {
            userAccounts[i - start] = accounts[user][i];
        }
        return userAccounts;
    }
}
