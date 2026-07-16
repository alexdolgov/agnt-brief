// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./interfaces/ITierManager.sol";
import "./interfaces/IOperators.sol";
import "../staking/libraries/BoringERC20.sol";
import "../staking/interfaces/ITokenFarm.sol";

contract TierManager is ITierManager, Initializable {
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using BoringERC20 for IBoringERC20;

    IOperators public operators;
    ITokenFarm public tokenFarm;
    IERC721 public nftContract;
    address public esVelaAddress;

    struct Tier {
        uint256 esVELAStaked;
        uint256 volumeTraded30d;
        uint256 volumeTradedLifetime;
        uint256 referrals;
        bool ownsNFT;
        uint256 feeDiscount;
        uint256 referFee;
        uint256 rebateFee;
        uint256 kickbackBonus;
        uint256 createdTimestamp;
    }

    struct User {
        uint256 tier;
        uint256 esVELAStaked;
        uint256 volumeTraded30d;
        uint256 volumeTradedLifetime;
        uint256 referrals;
        address referrer;
        bool ownsNFT;
    }

    uint256 public totalTiers;

    mapping(uint256 => Tier) public tiers;
    mapping(address => User) public users;

    EnumerableSetUpgradeable.AddressSet private whiteList;

    event TierUpdated(
        uint256 tier,
        uint256 esVELAStaked,
        uint256 volumeTraded30d,
        uint256 volumeTradedLifetime,
        uint256 referrals,
        bool ownsNFT,
        uint256 feeDiscount,
        uint256 referFee,
        uint256 rebateFee,
        uint256 kickbackBonus
    );
    event UserTierAssigned(address indexed user, uint256 tier);

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    modifier onlyTokenFarm() {
        require(msg.sender == address(tokenFarm), "only TokenFarm can call");
        _;
    }

    function initialize(
        address _operators,
        address _tokenFarm,
        address _nftContractAddress,
        address _esVela
    ) public initializer {
        require(AddressUpgradeable.isContract(_operators), "operators invalid");
        require(AddressUpgradeable.isContract(_tokenFarm), "TokenFarm invalid");
        require(AddressUpgradeable.isContract(_esVela), "esVela invalid");

        operators = IOperators(_operators);
        tokenFarm = ITokenFarm(_tokenFarm);
        nftContract = IERC721(_nftContractAddress);
        esVelaAddress = _esVela;
        totalTiers = 0;
    }

    function setNFTContract(address _nftContractAddress) external onlyOperator(3) {
        nftContract = IERC721(_nftContractAddress);
    }

    function _setTier(
        uint256 _tier,
        uint256 _esVELAStaked,
        uint256 _volumeTraded30d,
        uint256 _volumeTradedLifetime,
        uint256 _referrals,
        bool _ownsNFT,
        uint256 _feeDiscount,
        uint256 _referFee,
        uint256 _rebateFee,
        uint256 _kickbackBonus
    ) internal {
        if (tiers[_tier].createdTimestamp == 0) {
            totalTiers++;
        }
        tiers[_tier] = Tier({
            esVELAStaked: _esVELAStaked,
            volumeTraded30d: _volumeTraded30d,
            volumeTradedLifetime: _volumeTradedLifetime,
            referrals: _referrals,
            ownsNFT: _ownsNFT,
            feeDiscount: _feeDiscount,
            referFee: _referFee,
            rebateFee: _rebateFee,
            kickbackBonus: _kickbackBonus,
            createdTimestamp: block.timestamp
        });
        emit TierUpdated(
            _tier,
            _esVELAStaked,
            _volumeTraded30d,
            _volumeTradedLifetime,
            _referrals,
            _ownsNFT,
            _feeDiscount,
            _referFee,
            _rebateFee,
            _kickbackBonus
        );
    }

    function setTier(
        uint256 _tier,
        uint256 _esVELAStaked,
        uint256 _volumeTraded30d,
        uint256 _volumeTradedLifetime,
        uint256 _referrals,
        bool _ownsNFT,
        uint256 _feeDiscount,
        uint256 _referFee,
        uint256 _rebateFee,
        uint256 _kickbackBonus
    ) external onlyOperator(3) {
        _setTier(
            _tier,
            _esVELAStaked,
            _volumeTraded30d,
            _volumeTradedLifetime,
            _referrals,
            _ownsNFT,
            _feeDiscount,
            _referFee,
            _rebateFee,
            _kickbackBonus
        );
    }

    function assignUserTier(address _user, uint256 _tier) external onlyOperator(3) {
        require(tiers[_tier].esVELAStaked > 0 || _tier == 0, "Tier does not exist");
        users[_user].tier = _tier;
        emit UserTierAssigned(_user, _tier);
    }

    function getAllTiers() external view returns (Tier[] memory) {
        Tier[] memory allTiers = new Tier[](totalTiers);
        for (uint256 i = 0; i < totalTiers; i++) {
            allTiers[i] = tiers[i];
        }
        return allTiers;
    }

    function _updateUserTier(address _user) internal {
        if (isUserWhitelisted(_user)) return;

        User storage user = users[_user];
        uint256 newTier = 0;

        for (uint256 i = 0; i < totalTiers; i++) {
            Tier storage tier = tiers[i];

            if (
                user.esVELAStaked >= tier.esVELAStaked &&
                user.volumeTraded30d >= tier.volumeTraded30d &&
                user.volumeTradedLifetime >= tier.volumeTradedLifetime &&
                user.referrals >= tier.referrals &&
                user.ownsNFT == tier.ownsNFT
            ) {
                newTier = i;
            }
        }

        if (newTier != user.tier) {
            if (
                user.tier > 0 &&
                newTier == user.tier - 1 &&
                user.volumeTraded30d >= tiers[user.tier].volumeTraded30d / 2 &&
                user.esVELAStaked >= tiers[user.tier].esVELAStaked &&
                user.volumeTradedLifetime >= tiers[user.tier].volumeTradedLifetime &&
                user.referrals >= tiers[user.tier].referrals &&
                user.ownsNFT == tiers[user.tier].ownsNFT
            ) {
                return;
            }

            user.tier = newTier;
            emit UserTierAssigned(_user, newTier);
        }
    }

    function updateUserTier(
        address _user,
        uint256 _volumeTraded30d,
        uint256 _volumeTradedLifetime,
        address _referrer,
        uint256 _referrals
    ) public onlyOperator(1) {
        (uint256 _esVELAStaked, ) = tokenFarm.getStakedAmount(esVelaAddress, _user);
        bool _ownsNFT = nftContract.balanceOf(_user) > 0;
        users[_user].esVELAStaked = _esVELAStaked;
        users[_user].volumeTraded30d = _volumeTraded30d;
        users[_user].volumeTradedLifetime = _volumeTradedLifetime;
        users[_user].referrals = _referrals;
        users[_user].ownsNFT = _ownsNFT;
        users[_user].referrer = _referrer;
        _updateUserTier(_user);
    }

    function batchUpdateUserTier(
        address[] calldata usersToUpdate,
        uint256[] calldata volumeTraded30dArray,
        uint256[] calldata volumeTradedLifetimeArray,
        address[] calldata referrerArray,
        uint256[] calldata referralsArray
    ) external onlyOperator(1) {
        require(
            usersToUpdate.length == volumeTraded30dArray.length &&
                usersToUpdate.length == volumeTradedLifetimeArray.length &&
                usersToUpdate.length == referrerArray.length &&
                usersToUpdate.length == referralsArray.length,
            "Input arrays must have the same length"
        );

        for (uint256 i = 0; i < usersToUpdate.length; i++) {
            address user = usersToUpdate[i];
            uint256 volumeTraded30d = volumeTraded30dArray[i];
            uint256 volumeTradedLifetime = volumeTradedLifetimeArray[i];
            address referrer = referrerArray[i];
            uint256 referrals = referralsArray[i];

            updateUserTier(user, volumeTraded30d, volumeTradedLifetime, referrer, referrals);
        }
    }

    function updateUserTierOrRevert(
        address _user,
        uint256 _volumeTraded30d,
        uint256 _volumeTradedLifetime,
        address _referrer,
        uint256 _referrals
    ) external {
        require(msg.sender == address(0), "Caller is not address(0)");

        uint256 currentTier = users[_user].tier;

        (uint256 _esVELAStaked, ) = tokenFarm.getStakedAmount(esVelaAddress, _user);
        bool _ownsNFT = nftContract.balanceOf(_user) > 0;
        users[_user].esVELAStaked = _esVELAStaked;
        users[_user].volumeTraded30d = _volumeTraded30d;
        users[_user].volumeTradedLifetime = _volumeTradedLifetime;
        users[_user].referrals = _referrals;
        users[_user].ownsNFT = _ownsNFT;
        users[_user].referrer = _referrer;
        _updateUserTier(_user);

        if (users[_user].tier == currentTier) {
            revert("User tier was not updated");
        }
    }

    function updateUserTierByStaked(address _user) external onlyTokenFarm {
        (uint256 _esVELAStaked, ) = tokenFarm.getStakedAmount(esVelaAddress, _user);
        bool _ownsNFT = nftContract.balanceOf(_user) > 0;
        users[_user].esVELAStaked = _esVELAStaked;
        users[_user].ownsNFT = _ownsNFT;
        _updateUserTier(_user);
    }

    function getUserDetails(
        address _user
    )
        external
        view
        override
        returns (
            uint256 tier,
            address referrer,
            uint256 feeDiscount,
            uint256 referFee,
            uint256 rebateFee,
            uint256 kickbackBonus
        )
    {
        User memory user = users[_user];
        Tier memory tierData = tiers[user.tier];

        return (
            user.tier,
            user.referrer,
            tierData.feeDiscount,
            tierData.referFee,
            tierData.rebateFee,
            tierData.kickbackBonus
        );
    }

    function setUserTier(address _user, uint256 _tier) external onlyOperator(3) {
        users[_user].tier = _tier;
        if (isUserWhitelisted(_user) && _tier == 0) {
            EnumerableSetUpgradeable.remove(whiteList, _user);
        } else {
            EnumerableSetUpgradeable.add(whiteList, _user);
        }
        emit UserTierAssigned(_user, _tier);
    }

    function isUserWhitelisted(address _user) public view returns (bool) {
        return EnumerableSetUpgradeable.contains(whiteList, _user);
    }
}
