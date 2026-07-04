// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "./interfaces/IUserInfo.sol";

contract ICakeProxy is Ownable {
    address public admin;

    /// @dev mapping [user][userCreditPack]
    mapping(address => IUserInfo.UserCreditPack) public userCredits;

    /**
     * @notice Checks if the msg.sender is the admin address
     */
    modifier onlyAdmin() {
        require(msg.sender == admin, "None admin!");
        _;
    }

    constructor(address _admin) {
        admin = _admin;
    }

    /// @dev Update operator address in this contract, this is called by owner only
    /// @param _admin the address of new admin
    function updateAdmin(address _admin) external onlyOwner {
        require(admin != _admin, "admin not change");
        admin = _admin;
    }

    function setUserCredit(
        address _user,
        uint256 _userCredit
    ) external onlyAdmin {
        require(_user != address(0), "setUserCredit: Invalid address");
        IUserInfo.UserCreditPack storage pack = userCredits[_user];
        pack.userCredit = _userCredit;
    }

    /**
     * @notice calculate iCake credit per user.
     * @param _user: user address.
     */
    function getUserCredit(address _user) external view returns (uint256) {
        require(_user != address(0), "getUserCredit: Invalid address");
        return userCredits[_user].userCredit;
    }

    /**
     * @notice update ceiling thereshold duration for iCake calculation.
     * @param _newCeiling: new threshold duration.
     */
    function updateCeiling(uint256 _newCeiling) external onlyAdmin {

    }
}