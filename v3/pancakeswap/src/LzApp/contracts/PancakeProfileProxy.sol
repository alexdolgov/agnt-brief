// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin-4.5.0/contracts/access/AccessControl.sol";
import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "./interfaces/IUserInfo.sol";
import "./interfaces/IIFODeployerV7.sol";
import "./interfaces/IIFOV7Minimal.sol";

contract PancakeProfileProxy is AccessControl, Ownable {
    address public immutable IFODeployerV7Address;

    address public admin;

    /// @dev mapping [user][userProfilePack]
    mapping(address => IUserInfo.UserProfilePack) public userProfiles;

    /// @dev mapping [user][ifoAddress][expireDate]
    mapping(address => mapping(address => uint256)) public dataExpireDates;

    /**
    * @notice Checks if the msg.sender is the admin address
     */
    modifier onlyAdmin() {
        require(msg.sender == admin, "None admin!");
        _;
    }

    constructor(address _deployer, address _admin) {
        IFODeployerV7Address = _deployer;
        admin = _admin;
    }

    /// @dev Update operator address in this contract, this is called by owner only
    /// @param _admin the address of new admin
    function updateAdmin(address _admin) external onlyOwner {
        require(admin != _admin, "admin not change");
        admin = _admin;
    }

    function setUserProfile(
        address _userAddress,
        uint256 _userId,
        uint256 _numberPoints,
        address _nftAddress,
        uint256 _tokenId,
        bool _isActive) external onlyAdmin {

        require(_userAddress != address(0), "setUserProfile: Invalid address");

        IUserInfo.UserProfilePack storage pack = userProfiles[_userAddress];
        pack.userAddress = _userAddress;
        pack.userId = _userId;
        pack.numberPoints = _numberPoints;
        pack.nftAddress = _nftAddress;
        pack.tokenId = _tokenId;
        pack.isActive = _isActive;

        address previousIFOAddress = IIFODeployerV7(IFODeployerV7Address).previousIFOAddress();

        if (previousIFOAddress != address(0)) {
            uint256 ifoEndTimestamp = IIFOV7Minimal(previousIFOAddress).endTimestamp();
            if (block.timestamp < ifoEndTimestamp) {
                dataExpireDates[_userAddress][previousIFOAddress] = ifoEndTimestamp;
            } else {
                dataExpireDates[_userAddress][previousIFOAddress] = block.timestamp + 365 days;
            }
        }

        address currIFOAddress = IIFODeployerV7(IFODeployerV7Address).currIFOAddress();

        if (currIFOAddress != address(0)) {
            uint256 ifoEndTimestamp = IIFOV7Minimal(currIFOAddress).endTimestamp();
            if (block.timestamp < ifoEndTimestamp) {
                dataExpireDates[_userAddress][currIFOAddress] = ifoEndTimestamp;
            } else {
                dataExpireDates[_userAddress][currIFOAddress] = block.timestamp + 365 days;
            }
        }
    }

    function getUserProfile(address _userAddress)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            address,
            uint256,
            bool
        ) {
        require(_userAddress != address(0), "getUserProfile: Invalid address");

        address currIFOAddress = IIFODeployerV7(IFODeployerV7Address).currIFOAddress();

        if (dataExpireDates[_userAddress][currIFOAddress] < block.timestamp) {
            return (0, 0, 0, address(0x0), 0, false);
        }
        return (
            userProfiles[_userAddress].userId,
            userProfiles[_userAddress].numberPoints,
            0,
            userProfiles[_userAddress].nftAddress,
            userProfiles[_userAddress].tokenId,
            userProfiles[_userAddress].isActive
        );
    }

    function getUserStatus(address _userAddress) external view returns (bool) {
        require(_userAddress != address(0), "getUserStatus: Invalid address");

        address currIFOAddress = IIFODeployerV7(IFODeployerV7Address).currIFOAddress();

        if (dataExpireDates[_userAddress][currIFOAddress] < block.timestamp) {
            return false;
        }
        return userProfiles[_userAddress].isActive;
    }

    function getTeamProfile(uint256 _teamId)
        external
        view
        returns (
            string memory,
            string memory,
            uint256,
            uint256,
            bool
        ) {
        return ("", "", 0, 0, false);
    }

    /**
     * @dev To increase the number of points for a user.
     * Callable only by point admins
     */
    function increaseUserPoints(
        address _userAddress,
        uint256 _numberPoints,
        uint256 _campaignId
    ) external {

    }
}