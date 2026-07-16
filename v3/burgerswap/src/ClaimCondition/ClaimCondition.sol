// Dependency file: contracts/interfaces/IClaimCondition.sol

// SPDX-License-Identifier: MIT
// pragma solidity >=0.6.0;

interface IClaimCondition {
    function verify(uint256 pid, address user) external view returns(bool);
}

// Dependency file: contracts/interfaces/IDemaxShackFarm.sol

// pragma solidity >=0.6.0;

interface IDemaxShackFarm {
    function userInfo (uint256 _pid, address _user) external view returns(uint256 amount, uint256 rewardDebt, uint256 reward2Debt);
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


// Root file: contracts/ClaimCondition.sol

pragma solidity >=0.6.0;

// import 'contracts/interfaces/IClaimCondition.sol';
// import 'contracts/interfaces/IDemaxShackFarm.sol';
// import 'contracts/modules/Ownable.sol';

contract ClaimCondition is IClaimCondition, Ownable {
    
    struct Condition {
        address farm;
        uint256[] poolPids;
    }
    
    mapping(bytes32 => Condition) _condis;
    
    function verify(uint256 pid, address user) override external view returns(bool) {
        Condition memory cond = _condis[keccak256(abi.encode(msg.sender, pid))];
        for (uint i = 0; i < cond.poolPids.length; i++) {
            (uint256 amount, , ) = IDemaxShackFarm(cond.farm).userInfo(cond.poolPids[i], user);
            if (amount > 0) {
                return true;
            }
        }
        return false;
    }
    
    function add(address claim, uint256 reawardPid, address farm, uint256[] calldata poolPids) external onlyAdmin {
        _add(claim, reawardPid, farm, poolPids);
    }
    
    function update(address claim, uint256 reawardPid, address farm, uint256[] calldata poolPids) external onlyAdmin {
        _add(claim, reawardPid, farm, poolPids);
    }
    
    function _add(address claim, uint256 reawardPid, address farm, uint256[] memory poolPids) internal {
        require(claim != address(0), 'INVALID CLAIM ADDRESS.');
        bytes32 key = keccak256(abi.encode(claim, reawardPid));
        _condis[key] = Condition({
            farm: farm,
            poolPids: poolPids
        });
    }
}