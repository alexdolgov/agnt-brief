// SPDX-License-Identifier: MIT
pragma solidity >=0.8.15;
import "@openzeppelin/contracts/interfaces/IERC20.sol"; 

interface ICCS {
    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

	struct Withdrawn {
		uint256 amount;
		uint256 pentalty; 
	}

	function accept_migration(address user, uint256 amount, uint256 end) external; 
	function one() external view returns (uint256); 
    function totalSupply() external view returns (uint256);

    function locked(address _user) external view returns (LockedBalance memory);

    function modify_lock(
        uint256 _amount,
        uint256 _unlock_time,
        address _user
    ) external;

	function withdraw() external returns (Withdrawn memory); 
	function checkpoint() external;

	function owner() external returns (address); 

	function set_migration_period(bool active) external;  
}

interface IVotingYFI is IERC20 {
    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

	struct Withdrawn {
		uint256 amount;
		uint256 pentalty; 
	}

    function totalSupply() external view returns (uint256);

    function locked(address _user) external view returns (LockedBalance memory);
	function supply() external view returns (uint256); 

    function modify_lock(
        uint256 _amount,
        uint256 _unlock_time,
        address _user
    ) external;

	function withdraw() external returns (Withdrawn memory); 

	function checkpoint() external;

	function owner() external returns (address); 

	function set_migration_period(bool active) external;  

	function migrate() external; 

	function set_ccs_contract(address newAddress) external;  

	function accept_migration(uint256 amount, uint256 end) external; 

	function setOwner(address addr) external; 
}
