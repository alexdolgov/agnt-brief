// SPDX-License-Identifier: MIT
pragma solidity <=0.8.23;

contract ParadiseTycoonPowerups {
    // Admin address
    address public ADMIN_ADDRESS;

    // Last blocktime the contract was interacted with
    struct Powerup {
        uint256 id;
        uint256 cooldown;
    }

    mapping(uint256 => Powerup) public powerups;

    // Map used powerups to user and their timestamp
    mapping(address => mapping(uint256 => uint256)) public usedPowerups;

    // Constructor
    constructor() {
        ADMIN_ADDRESS = msg.sender;
        definePowerups();
    }

    // Get the last used powerup by user if it exists
    function getPowerupUsed(address _user, uint256 _id)
        public
        view
        returns (uint256)
    {
        // Get timestamp of last used powerup if it exists
        return usedPowerups[_user][_id];
    }

    // Use powerup
    function usePowerup(uint256 _id) public returns (bool) {
        // Check if the powerup exists
        if (powerups[_id].id != _id) {
            return false;
        }

        // Check if the powerup is on cooldown
        if (usedPowerups[msg.sender][_id] + powerups[_id].cooldown >= block.timestamp) {
            return false;
        }

        // Set the powerup as used
        usedPowerups[msg.sender][_id] = block.timestamp;
        return true;
    }

    // Define initial powerups. Usable only by the contract constructor
    function definePowerups() private {
        // Define powerups
        powerups[1] = Powerup(1, 60);
        powerups[2] = Powerup(2, 120);
        powerups[3] = Powerup(3, 180);
        powerups[4] = Powerup(4, 240);
        powerups[5] = Powerup(5, 300);
    }

    // Update powerup or add it. Admin only function
    function updatePowerup(uint256 _id, uint256 _cooldown) public {
        // Check if the caller is the admin
        require(msg.sender == ADMIN_ADDRESS, "Only admin can update powerups");

        // Update powerup
        powerups[_id] = Powerup(_id, _cooldown);
    }

    // Transfer admin rights to a new address
    function transferAdmin(address newAdmin) public {
        require(msg.sender == ADMIN_ADDRESS, "Only admin can transfer admin rights");
        require(newAdmin != address(0), "New admin cannot be the zero address");
        ADMIN_ADDRESS = newAdmin;
    }

    // Get powerup details
    function getPowerupDetails(uint256 _id) public view returns (uint256, uint256) {
        require(powerups[_id].id == _id, "Powerup does not exist");
        return (powerups[_id].id, powerups[_id].cooldown);
    }
}
