// Dependency file: contracts/interfaces/IClaimRule.sol

// SPDX-License-Identifier: MIT
// pragma solidity >=0.6.0;

interface IClaimRule {
    function getRewardAmount(uint256 pid, address user) external view returns(uint256);
}

// Dependency file: contracts/modules/Ownable.sol

// pragma solidity >=0.6.0;

contract Ownable {
    address public owner;
    address public admin;

    event OwnerChanged(address indexed _oldOwner, address indexed _newOwner);
    event AdminChanged(address indexed _oldAdmin, address indexed _newAdmin);

    constructor () public {
        owner = msg.sender;
        admin = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Ownable: FORBIDDEN');
        _;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, 'Ownable: FORBIDDEN');
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), 'Ownable: INVALID_ADDRESS');
        emit OwnerChanged(owner, _newOwner);
        owner = _newOwner;
    }

    function changeAdmin(address _newAdmin) public onlyAdmin {
        require(_newAdmin != address(0), 'Ownable: INVALID_ADDRESS');
        require(_newAdmin != admin, 'Ownable: NO CHANGE');
        emit AdminChanged(admin, _newAdmin);
        admin = _newAdmin;
    }
}


// Root file: contracts/ClaimRule.sol

pragma solidity >=0.6.0;

// import 'contracts/interfaces/IClaimRule.sol';
// import 'contracts/modules/Ownable.sol';

contract ClaimRule is IClaimRule, Ownable {
    mapping(bytes32 => uint256) _rewardAmounts;
    
    function getRewardAmount(uint256 pid, address user) override external view returns(uint256) {
        return _rewardAmounts[keccak256(abi.encode(msg.sender, pid))];
    }
    
    function add(address claim, uint256 rewardPid, uint256 rewardAmount) external onlyAdmin {
        _add(claim, rewardPid, rewardAmount);
    }
    
    function update(address claim, uint256 rewardPid, uint256 rewardAmount) external onlyAdmin {
        _add(claim, rewardPid, rewardAmount);
    } 
    
    function _add(address claim, uint256 rewardPid, uint256 rewardAmount) internal {
        require(claim != address(0), 'INVALID CLAIM ADDRESS.');
        _rewardAmounts[keccak256(abi.encode(claim, rewardPid))] = rewardAmount;
    }
}