// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

School.sol

Written by: mousedev.eth

*/


import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol";
import "./utilities/UtilitiesV3Upgradeable.sol";

contract School is UtilitiesV3Upgradeable {

    event TokenJoinedStat(address _collection, uint256 _tokenId, uint256 _statId);
    event TokenLeftStat(address _collection, uint256 _tokenId, uint256 _statId);

    struct TokenDetails {
        uint128 statAccrued;
        uint64 timestampJoined;
        bool joined;
    }

    struct StatDetails {
        uint128 globalStatAccrued;
        uint128 emissionRate;
        bool exists;
        bool joinable;
    }


    //Each tokens details within a stat within a collection.
    //Collection address to statId to tokenId to token details.
    mapping(address => mapping(uint64 => mapping(uint256 => TokenDetails)))
        public tokenDetails;

    //A record of how many stats this token is in at once.
    mapping(address => mapping(uint256 => uint256))
        public totalStatsJoinedWithinCollection;

    //Each stat details within a collection.
    //Collection address to statId to stat details.
    mapping(address => mapping(uint256 => StatDetails)) public statDetails;

    /**
     * @dev Joins a stat with a tokenId.
     * @param _collectionAddress collection address token belongs to
     * @param _statId statId to join
     * @param _tokenIds tokens to join stat with
     */
    function joinStat(
        address _collectionAddress,
        uint64 _statId,
        uint256[] memory _tokenIds
    ) external {
        StatDetails storage _statDetails = statDetails[_collectionAddress][_statId];

        //Require stat is joinable.
        require(
            _statDetails.joinable,
            "Stat not currently joinable!"
        );

        for (uint256 i = 0; i < _tokenIds.length; i++) {
            uint256 _tokenId = _tokenIds[i];

            TokenDetails storage _tokenDetails = tokenDetails[_collectionAddress][_statId][_tokenId];

            //Require they are the owner of this token
            require(
                msg.sender == IERC721Upgradeable(_collectionAddress).ownerOf(_tokenId),
                "You don't own this token!"
            );
            //Require they are not currently in this stat.
            require(_tokenDetails.joined == false, "Token already joined this stat!");

            //Set the timestamp and joined vars.
            _tokenDetails.timestampJoined = uint64(block.timestamp);
            _tokenDetails.joined = true;

            //Increment their total stats joined by one
            totalStatsJoinedWithinCollection[_collectionAddress][_tokenId]++;

            emit TokenJoinedStat(_collectionAddress, _tokenId, _statId);
        }
    }

    /**
     * @dev Leaves a stat with a tokenId.
     * @param _collectionAddress collection address token belongs to
     * @param _statId statId to leave
     * @param _tokenIds tokens to leave stat with
     */
    function leaveStat(
        address _collectionAddress,
        uint64 _statId,
        uint256[] memory _tokenIds
    ) external {

        for (uint256 i = 0; i < _tokenIds.length; i++) {
            uint256 _tokenId = _tokenIds[i];

            //Require they are the owner of this.
            require(
                msg.sender == IERC721Upgradeable(_collectionAddress).ownerOf(_tokenId),
                "You don't own this token!"
            );

            //Create an in memory struct of the token details.
            TokenDetails memory _thisTokenDetails = tokenDetails[
                _collectionAddress
            ][_statId][_tokenId];

            //Require is it locked in order to leave.
            require(_thisTokenDetails.joined, "Token not in this stat!");

            //Get how many seconds passed this joining.
            uint128 timeElapsed = uint128(block.timestamp) -
                _thisTokenDetails.timestampJoined;

            //Multiply that by emission rate to get total stat accrued.
            uint128 statAccrued = statDetails[_collectionAddress][_statId]
                .emissionRate * timeElapsed;

            //Set statAccrued and clear timestamp and joined vars.
            tokenDetails[_collectionAddress][_statId][_tokenId] = TokenDetails(
                _thisTokenDetails.statAccrued + statAccrued,
                0,
                false
            );

            //Add this much stat to global accrual of this stat.
            statDetails[_collectionAddress][_statId]
                .globalStatAccrued += statAccrued;

            //Decrement their total stats joined by one
            totalStatsJoinedWithinCollection[_collectionAddress][_tokenId]--;

            emit TokenLeftStat(_collectionAddress, _tokenId, _statId);
        }
    }

    /**
     * @dev Gets pending emissions on stat.
     * @param _collectionAddress collection address token belongs to
     * @param _statId statId to get
     * @param _tokenId token to get stat with
     */
    function getPendingStatEmissions(
        address _collectionAddress,
        uint64 _statId,
        uint256 _tokenId
    ) public view returns (uint128) {
        //Require this stat exists.
        require(
            statDetails[_collectionAddress][_statId].exists,
            "Stat does not exist!"
        );

        //Create an in memory struct of the token details.
        TokenDetails memory _thisTokenDetails = tokenDetails[
            _collectionAddress
        ][_statId][_tokenId];

        //This is for view functions that request pending emissions in order to do things.
        if (!_thisTokenDetails.joined) return 0;

        //Get how many seconds passed this joining.
        uint128 timeElapsed = uint128(block.timestamp) -
            _thisTokenDetails.timestampJoined;

        //Multiply that by emission rate to get total stat accrued.
        uint128 statAccrued = statDetails[_collectionAddress][_statId]
            .emissionRate * timeElapsed;

        return statAccrued;
    }

    /**
     * @dev Claims total stat for a token PLUS it's pending stat emission.
     * @param _collectionAddress collection address token belongs to
     * @param _statId statId to get
     * @param _tokenId token to get for
     */
    function getTotalStatPlusPendingEmissions(address _collectionAddress, uint64 _statId, uint256 _tokenId) external view returns (uint128){
        return getPendingStatEmissions(_collectionAddress, _statId, _tokenId) + tokenDetails[_collectionAddress][_statId][_tokenId].statAccrued;
    }

    /**
     * @dev Claims pending emissions on stat.
     * @param _collectionAddress collection address token belongs to
     * @param _statId statId to claim
     * @param _tokenIds tokens to claim stat with
     */
    function claimPendingStatEmissions(
        address _collectionAddress,
        uint64 _statId,
        uint256[] memory _tokenIds
    ) external {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            uint256 _tokenId = _tokenIds[i];

            //Require they are the owner of this.
            require(
                msg.sender == IERC721Upgradeable(_collectionAddress).ownerOf(_tokenId),
                "You don't own this token!"
            );

            //Create an in memory struct of the token details.
            TokenDetails memory _thisTokenDetails = tokenDetails[
                _collectionAddress
            ][_statId][_tokenId];

            //Require it is joined, to claim.
            require(_thisTokenDetails.joined, "Token not in this stat!");

            //Multiply that by emission rate to get total stat accrued.
            uint128 statAccrued = getPendingStatEmissions(
                _collectionAddress,
                _statId,
                _tokenId
            );

            //Set statAccrued and clear timestamp and joined vars.
            tokenDetails[_collectionAddress][_statId][_tokenId] = TokenDetails(
                _thisTokenDetails.statAccrued + statAccrued,
                uint64(block.timestamp),
                true
            );

            //Add this much stat to global accrual of this stat.
            statDetails[_collectionAddress][_statId]
                .globalStatAccrued += statAccrued;
        }
    }


    /**
     * @dev Removes stats from a token.
     * @param _collectionAddress Address this token belongs to.
     * @param _statId StatId to adjust.
     * @param _tokenId TokenId to remove stats from.
     * @param _amountOfStatToRemove amount of stat to remove.
     */
    function removeStatAsAllowedAdjuster(
        address _collectionAddress,
        uint64 _statId,
        uint256 _tokenId,
        uint128 _amountOfStatToRemove
    ) external requiresEitherRole(OWNER_ROLE, SCHOOL_ALLOWED_ADJUSTER_ROLE){
        tokenDetails[_collectionAddress][_statId][_tokenId]
            .statAccrued -= _amountOfStatToRemove;

        statDetails[_collectionAddress][_statId]
            .globalStatAccrued -= _amountOfStatToRemove;
    }

    /**
     * @dev Add stats to a token.
     * @param _collectionAddress Address this token belongs to.
     * @param _statId StatId to adjust.
     * @param _tokenId TokenId to add stats to.
     * @param _amountOfStatToAdd amount of stat to add.
     */
    function addStatAsAllowedAdjuster(
        address _collectionAddress,
        uint64 _statId,
        uint256 _tokenId,
        uint128 _amountOfStatToAdd
    ) external requiresEitherRole(OWNER_ROLE, SCHOOL_ALLOWED_ADJUSTER_ROLE){
        tokenDetails[_collectionAddress][_statId][_tokenId]
            .statAccrued += _amountOfStatToAdd;

        statDetails[_collectionAddress][_statId]
            .globalStatAccrued += _amountOfStatToAdd;
    }

    /**
     * @dev Creates a stat for a collection.
     * @param _collectionAddress Address to add stat for.
     * @param _statId StatID of stat.
     * @param _statDetails Stat details.
     */
    function setStatDetails(
        address _collectionAddress,
        uint64 _statId,
        StatDetails memory _statDetails
    ) external requiresEitherRole(OWNER_ROLE, SCHOOL_ADMIN_ROLE) {
        require(
            !statDetails[_collectionAddress][_statId].exists,
            "Stat already initialized"
        );
        //Don't override globalStatAccrued
        statDetails[_collectionAddress][_statId].emissionRate = _statDetails
            .emissionRate;
        statDetails[_collectionAddress][_statId].joinable = _statDetails
            .joinable;
        //Ensure exists is true.
        statDetails[_collectionAddress][_statId].exists = true;
    }

    /**
     * @dev Adjusts a stat for a collection.
     * @param _collectionAddress Address to adjust stat for.
     * @param _statId StatID of stat.
     * @param _statDetails Stat details.
     */
    function adjustStatDetails(
        address _collectionAddress,
        uint64 _statId,
        StatDetails memory _statDetails
    ) external requiresEitherRole(OWNER_ROLE, SCHOOL_ADMIN_ROLE) {
        require(
            statDetails[_collectionAddress][_statId].exists,
            "Stat doesn't exist!"
        );
        //Don't overwrite globalStatAccrued
        statDetails[_collectionAddress][_statId].emissionRate = _statDetails
            .emissionRate;
        statDetails[_collectionAddress][_statId].joinable = _statDetails
            .joinable;
    }

    function getManyTokenDetails(
        address _collectionAddress,
        uint64 _statId,
        uint256[] memory _tokenIds
    ) external view returns(TokenDetails[] memory) {
        TokenDetails[] memory _tokenDetails = new TokenDetails[](_tokenIds.length);

        for(uint256 i =0;i<_tokenIds.length;i++){
            _tokenDetails[i] = tokenDetails[_collectionAddress][_statId][_tokenIds[i]];   
        }

        return _tokenDetails;
    }

    
    // -------------------------------------------------------------
    //                       Initializer
    // -------------------------------------------------------------

    function initialize() public initializer {
        UtilitiesV3Upgradeable.__Utilities_init();
    }

    uint256[50] private __gap;
}
