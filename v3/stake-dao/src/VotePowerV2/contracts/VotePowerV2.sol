//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "./interfaces/IVECake.sol";
import "./interfaces/IOwnable.sol";

contract VotePowerV2 is Ownable {
    address public constant VECake = 0x5692DB8177a81A6c6afc8084C2976C9933EC1bAB;

    // The whitelisted user's delegator, the delegator can vote used whitelist's vecake balance.
    // delegator[whitelist address] => delegator address
    mapping(address => address) public delegator;

    // Admin will be used to create core proposal
    mapping(address => uint256) adminPower;

    // userDelegatedWhitelist[user address] => whitelist address
    mapping(address => address) public userDelegatedWhitelist;

    event SetDelegator(address user, address whitelist, address oldDelegator, address newDelegator);
    event RemoveDelegator(address user, address whitelist, address oldDelegator);
    event SetAdminPower(address admin, uint256 power);

    constructor() {}

    /// @notice Set delegator for whitelist address in VECake
    /// @dev Only whitelist smart contract, whitelist owner or owner can set delegator
    /// @dev One EOA account can only have one whitelist address
    /// @param _whitelist Whitelist address
    /// @param _delegator Delegator address
    /// @param _checkWhitelistOwner Whether need to check whitelist owner address
    function setDelegator(
        address _whitelist,
        address _delegator,
        bool _checkWhitelistOwner
    ) external {
        require(_delegator != address(0), "Zero address");
        require(userDelegatedWhitelist[_delegator] == address(0), "Dlegator already had set whitelist, please remove");
        require(_isContract(_whitelist), "Not Contract");
        require(IVECake(VECake).whitelistedCallers(_whitelist), "Not whitelist");

        address whitelistOwner;
        if (_checkWhitelistOwner) {
            whitelistOwner = IOwnable(_whitelist).owner();
        }
        // Only whitelist smart contract,  whitelist owner or owner can set delegator
        require(msg.sender == _whitelist || msg.sender == whitelistOwner || msg.sender == owner(), "Permission denied");

        // Need to remove the old delegator
        address oldDelegator = delegator[_whitelist];
        if (oldDelegator != address(0)) {
            delete userDelegatedWhitelist[oldDelegator];
        }
        userDelegatedWhitelist[_delegator] = _whitelist;
        delegator[_whitelist] = _delegator;
        emit SetDelegator(msg.sender, _whitelist, oldDelegator, _delegator);
    }

    /// @notice Remove delegator for whitelist address in VECake
    /// @dev Only whitelist smart contract owner, delegator or owner can remove delegator
    /// @param _whitelist Whitelist address
    /// @param _checkWhitelistOwner Whether need to check whitelist owner address
    function removeDelegator(address _whitelist, bool _checkWhitelistOwner) external {
        require(_isContract(_whitelist), "Not Contract");
        require(IVECake(VECake).whitelistedCallers(_whitelist), "Not whitelist");

        address whitelistOwner;
        if (_checkWhitelistOwner) {
            whitelistOwner = IOwnable(_whitelist).owner();
        }
        address delegatorAddress = delegator[_whitelist];
        require(delegatorAddress != address(0), "No delegator");
        // Only whitelist smart contract,  whitelist owner, delegator or owner can remove delegator
        require(
            msg.sender == _whitelist ||
                msg.sender == whitelistOwner ||
                msg.sender == delegatorAddress ||
                msg.sender == owner(),
            "Permission denied"
        );

        delete userDelegatedWhitelist[delegatorAddress];
        delete delegator[_whitelist];

        emit RemoveDelegator(msg.sender, _whitelist, delegatorAddress);
    }

    function setAdminPower(address _admin, uint256 _power) external onlyOwner {
        adminPower[_admin] = _power;
        emit SetAdminPower(_admin, _power);
    }

    function getCakePoolBalance(address _user) public view returns (uint256) {
        if (adminPower[_user] > 0) {
            return adminPower[_user];
        }
        // Delegated whitelist smart contract address can not get voting power
        if (delegator[_user] != address(0)) {
            return 0;
        }
        address delegatedWhitelist = userDelegatedWhitelist[_user];
        if (delegatedWhitelist != address(0)) {
            return _getVECakeBalance(delegatedWhitelist) + _getVECakeBalance(_user);
        } else {
            return _getVECakeBalance(_user);
        }
    }

    function getCakeBalance(address _user) public view returns (uint256) {
        return 0;
    }

    function getCakeVaultBalance(address _user) public pure returns (uint256) {
        return 0;
    }

    function getIFOPoolBalancee(address _user) public view returns (uint256) {
        return 0;
    }

    function getCakeBnbLpBalance(address _user) public view returns (uint256) {
        return 0;
    }

    function getPoolsBalance(address _user, address[] memory _pools) public view returns (uint256) {
        return 0;
    }

    function getVotingPower(address _user, address[] memory _pools) public view returns (uint256) {
        return getCakePoolBalance(_user);
    }

    function getVotingPowerWithoutPool(address _user) public view returns (uint256) {
        return getCakePoolBalance(_user);
    }

    function _getVECakeBalance(address _user) internal view returns (uint256) {
        return IVECake(VECake).balanceOf(_user);
    }

    function _isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }
}
