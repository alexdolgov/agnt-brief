// ============================================================
// FILE: interfaces/IPermastaker.sol
// ============================================================


pragma solidity ^0.8.20;

interface IPermastaker {
    error OwnableInvalidOwner(address owner);
    error OwnableUnauthorizedAccount(address account);
    event OperatorUpdated(address indexed operator);
    event OwnershipTransferStarted(
        address indexed previousOwner,
        address indexed newOwner
    );
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    function acceptOwnership() external;

    function claimAndStake() external returns (uint256 amount);

    function core() external view returns (address);

    function execute(address target, bytes memory data)
        external
        returns (bool, bytes memory);

    function migrateStaker() external;

    function name() external view returns (string memory);

    function operator() external view returns (address);

    function owner() external view returns (address);

    function pendingOwner() external view returns (address);

    function registry() external view returns (address);

    function renounceOwnership() external;

    function safeExecute(address target, bytes memory data)
        external
        returns (bytes memory);

    function setOperator(address _operator) external;

    function staker() external view returns (address);

    function transferOwnership(address newOwner) external;

    function vestManager() external view returns (address);
}

// ============================================================
// FILE: src/PermastakerOperator.sol
// ============================================================

pragma solidity 0.8.28;

import {IPermastaker} from "interfaces/IPermastaker.sol";

contract PermastakerOperator {
    IPermastaker public constant permastaker = IPermastaker(0x12341234B35c8a48908c716266db79CAeA0100E8);
    address public operator;
    mapping(address => bool) public approved;

    event Approved(address indexed account, bool indexed approved);
    event SetOperator(address indexed operator);
    
    modifier onlyOperator() {
        require(
            msg.sender == operator ||
            msg.sender == permastaker.owner(),
            "Not operator"
        );
        _;
    }

    modifier onlyApproved() {
        require(
            approved[msg.sender] ||
            msg.sender == operator ||
            msg.sender == owner(),
            "Not approved"
        );
        _;
    }

    constructor(address _operator, address[] memory _approved) {
        operator = _operator;
        emit SetOperator(_operator);
        for (uint256 i = 0; i < _approved.length; i++) {
            approved[_approved[i]] = true;
            emit Approved(_approved[i], true);
        }
    }

    function claimAndStake() external onlyApproved returns (uint256) {
        return permastaker.claimAndStake();
    }

    function safeExecute(address _target, bytes memory _data) external onlyOperator returns (bytes memory) {
        return permastaker.safeExecute(_target, _data);
    }

    function setApproved(address _account, bool _approved) external onlyOperator {
        approved[_account] = _approved;
        emit Approved(_account, _approved);
    }

    function setOperator(address _operator) external {
        require(msg.sender == owner(), "Not owner");
        operator = _operator;
        emit SetOperator(_operator);
    }

    function owner() public view returns (address) {
        return permastaker.owner();
    }
}
