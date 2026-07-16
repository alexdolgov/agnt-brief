interface IVotingEscrow {

    struct LockedBalance {
        int128 amount;
        uint256 end;
        bool isPermanent;
    }
    
    function decimals() external view returns (uint8);
    function balanceOf(address _owner) external view returns (uint256);
    function balanceOfNFT(uint256 _tokenId) external view returns (uint256);
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external;
    function locked(uint256 _tokenId) external view returns (IVotingEscrow.LockedBalance memory);
    function increaseUnlockTime(uint256 _tokenId, uint256 _lockDuration) external;

    // MOOSE
    // remove unused functions

    // Functions
    /*
    function CLOCK_MODE() external pure returns (string memory);
    function DELEGATION_TYPEHASH() external view returns (bytes32);
    function DOMAIN_TYPEHASH() external view returns (bytes32);
    function allowedManager() external view returns (address);
    function approve(address _approved, uint256 _tokenId) external;
    function artProxy() external view returns (address);
    function balanceOf(address _owner) external view returns (uint256);
    function balanceOfNFT(uint256 _tokenId) external view returns (uint256);
    function balanceOfNFTAt(uint256 _tokenId, uint256 _t) external view returns (uint256);
    function canSplit(address) external view returns (bool);
    function checkpoint() external;
    function clock() external view returns (uint48);
    function createLock(uint256 _value, uint256 _lockDuration) external returns (uint256);
    function createLockFor(uint256 _value, uint256 _lockDuration, address _to) external returns (uint256);
    function createManagedLockFor(address _to) external returns (uint256);
    function deactivated(uint256) external view returns (bool);
    function delegate(uint256 delegator, uint256 delegatee) external;
    function delegateBySig(uint256 delegator, uint256 delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) external;
    function delegates(uint256 delegator) external view returns (uint256);
    function depositFor(uint256 _tokenId, uint256 _value) external;
    function depositManaged(uint256 _tokenId, uint256 _mTokenId) external;
    function distributor() external view returns (address);
    function epoch() external view returns (uint256);
    function factoryRegistry() external view returns (address);
    function forwarder() external view returns (address);
    function getApproved(uint256 _tokenId) external view returns (address);
    function getPastTotalSupply(uint256 _timestamp) external view returns (uint256);
    function getPastVotes(address _account, uint256 _tokenId, uint256 _timestamp) external view returns (uint256);
    function idToManaged(uint256) external view returns (uint256);
    function increaseAmount(uint256 _tokenId, uint256 _value) external;
    function isApprovedForAll(address _owner, address _operator) external view returns (bool);
    function isApprovedOrOwner(address _spender, uint256 _tokenId) external view returns (bool);
    function isTrustedForwarder(address forwarder) external view returns (bool);
    function lockPermanent(uint256 _tokenId) external;
    function locked(uint256 _tokenId) external view returns (IVotingEscrow.LockedBalance memory);
    function managedToFree(uint256) external view returns (address);
    function managedToLocked(uint256) external view returns (address);
    function merge(uint256 _from, uint256 _to) external;
    function name() external view returns (string memory);
    function nonces(address) external view returns (uint256);
    function numCheckpoints(uint256) external view returns (uint48);
    function ownerOf(uint256 _tokenId) external view returns (address);
    function ownerToNFTokenIdList(address, uint256) external view returns (uint256);
    function permanentLockBalance() external view returns (uint256);
    function pointHistory(uint256 _loc) external view returns (IVotingEscrow.GlobalPoint memory);
    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes calldata _data) external;
    function setAllowedManager(address _allowedManager) external;
    function setApprovalForAll(address _operator, bool _approved) external;
    function setArtProxy(address _proxy) external;
    function setManagedState(uint256 _mTokenId, bool _state) external;
    function setTeam(address _team) external;
    function setVoterAndDistributor(address _voter, address _distributor) external;
    function slopeChanges(uint256) external view returns (int128);
    function split(uint256 _from, uint256 _amount) external returns (uint256 _tokenId1, uint256 _tokenId2);
    function supply() external view returns (uint256);
    function supportsInterface(bytes4 _interfaceID) external view returns (bool);
    function symbol() external view returns (string memory);
    function team() external view returns (address);
    function toggleSplit(address _account, bool _bool) external;
    function token() external view returns (address);
    function tokenId() external view returns (uint256);
    function tokenURI(uint256 _tokenId) external view returns (string memory);
    function totalSupply() external view returns (uint256);
    function totalSupplyAt(uint256 _timestamp) external view returns (uint256);
    function transferFrom(address _from, address _to, uint256 _tokenId) external;
    function unlockPermanent(uint256 _tokenId) external;
    function userPointEpoch(uint256) external view returns (uint256);
    function userPointHistory(uint256 _tokenId, uint256 _loc) external view returns (IVotingEscrow.UserPoint memory);
    function version() external view returns (string memory);
    function voted(uint256) external view returns (bool);
    function voter() external view returns (address);
    function voting(uint256 _tokenId, bool _voted) external;
    function weights(uint256, uint256) external view returns (uint256);
    function withdraw(uint256 _tokenId) external;
    function withdrawManaged(uint256 _tokenId) external;

    */
}
