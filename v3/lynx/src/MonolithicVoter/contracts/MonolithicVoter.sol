// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Monolithic Voter contract which houses all partner voting power, 
streamlining the process to ensure they do not obtain operational overhead.

Dev: DOG @RAMSES https://twitter.com/yesthatdog
*/

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";

interface IVoter {
    function vote(
        uint256 _tokenId,
        address[] calldata _poolVote,
        uint256[] calldata _weights
    ) external;

    function reset(uint256 tokenID) external;

    function claimFees(
        address[] calldata,
        address[][] calldata,
        uint256
    ) external;

    function poke(uint256 _tokenId) external;

    function poolVote(
        uint256 _tokenId,
        uint256 _index
    ) external view returns (address);

    function poolVoteLength(uint256 tokenId) external view returns (uint256);

    function votes(
        uint256 _tokenId,
        address _pool
    ) external view returns (uint256);

    function _epochTimestamp() external view returns (uint256);

    function lastVoted(uint256 tokenId) external view returns (uint256);
}

interface IVe {
    function increase_unlock_time(uint _tokenId, uint _lock_duration) external;

    function transferFrom(address from, address to, uint256 tokenID) external;

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenID
    ) external;

    function ownerOf(uint256 tokenID) external view returns (address);
}

interface IVeDist {
    function claim_many(uint[] memory _tokenIds) external returns (bool);
}

contract MonolithicVoter is ERC721Holder {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint128 public constant MAX = 2 * 365 * 86400; // 2 years

    address public operator;
    address public multisig;
    IVoter public voter;
    IVe public ve;
    IVeDist public veDist;

    EnumerableSet.AddressSet private _allowedToVote;

    mapping(uint256 => address) private __ownerOf;
    mapping(uint256 => string) private __partner;
    mapping(address => EnumerableSet.UintSet) private _tokensOwned;
    mapping(uint256 => EnumerableSet.AddressSet) private _partnerAllowedToVote;

    event TokenAssigned(uint256 tokenID, address designatee);
    event PartnerNameSetted(uint256 tokenID, string name);
    event OperatorSetted(address value);
    event MultisigSetted(address value);
    event PairsWhitelisted(address[] pairs);
    event PairsRemoved(address[] pairs);
    event PairsWhitelistedForPartner(uint256 tokenID, address[] pairs);
    event PairsRemovedForPartner(uint256 tokenID, address[] pairs);
    event TokenRevoked(uint256 tokenID);

    event Voted(
        uint256 tokenID,
        address ownerOf,
        address[] pools,
        uint256[] weights
    );
    event RewardClaimed(
        uint256 tokenID,
        address ownerOf,
        address receiver,
        address[] pools,
        address[][] tokens,
        uint256[][] values
    );
    event Rebased(uint256[] tokenIDs);
    event LockupIncreased(uint256[] tokenIDs);

    modifier operatorGated() {
        require(msg.sender == operator || msg.sender == multisig, "!auth");
        _;
    }

    constructor(
        address _multisig,
        address _voter,
        address _ve,
        address _veDist
    ) {
        operator = msg.sender;
        multisig = _multisig;
        voter = IVoter(_voter);
        ve = IVe(_ve);
        veDist = IVeDist(_veDist);
    }

    ///@notice set the owner of a protocol nft
    function assign(
        uint256 _tokenID,
        address _designatee
    ) external operatorGated {
        require(ve.ownerOf(_tokenID) == address(this), "!custodied");
        if (__ownerOf[_tokenID] != address(0))
            _tokensOwned[__ownerOf[_tokenID]].remove(_tokenID);
        __ownerOf[_tokenID] = _designatee;
        _tokensOwned[_designatee].add(_tokenID);

        emit TokenAssigned(_tokenID, _designatee);
    }

    ///@notice set the name of the protocol associated with the tokenID
    function setName(
        uint256 _tokenID,
        string calldata _partner
    ) external operatorGated {
        __partner[_tokenID] = _partner;

        emit PartnerNameSetted(_tokenID, _partner);
    }

    ///@notice set operator address
    function setOperator(address _operator) external operatorGated {
        require(_operator != address(0));
        operator = _operator;

        emit OperatorSetted(_operator);
    }

    ///@notice set multisig address
    function setMultisig(address _multisig) external {
        require(msg.sender == multisig, "!auth");
        require(_multisig != address(0));
        multisig = _multisig;

        emit MultisigSetted(multisig);
    }

    ///@notice allow protocols for voting for list of pools
    function setWhitelisted(
        address[] calldata _whitelistedPairs
    ) external operatorGated {
        for (uint256 i; i < _whitelistedPairs.length; ++i) {
            if (!_allowedToVote.contains(_whitelistedPairs[i]))
                _allowedToVote.add(_whitelistedPairs[i]);
        }

        emit PairsWhitelisted(_whitelistedPairs);
    }

    ///@notice remove pools from the protocol whitelist
    function removeWhitelisted(
        address[] calldata _whitelistedPairs
    ) external operatorGated {
        for (uint256 i = 0; i < _whitelistedPairs.length; ++i) {
            if (_allowedToVote.contains(_whitelistedPairs[i])) {
                _allowedToVote.remove(_whitelistedPairs[i]);
            }
        }

        emit PairsRemoved(_whitelistedPairs);
    }

    ///@notice allow specific partner protocols for voting for current pools
    function setWhitelistForPartner(
        uint256 _tokenID,
        address[] calldata _whitelistedPairs
    ) external operatorGated {
        for (uint256 i = 0; i < _whitelistedPairs.length; ++i) {
            if (
                !_partnerAllowedToVote[_tokenID].contains(_whitelistedPairs[i])
            ) {
                _partnerAllowedToVote[_tokenID].add(_whitelistedPairs[i]);
            }
        }

        emit PairsWhitelistedForPartner(_tokenID, _whitelistedPairs);
    }

    ///@notice disallow specific partner protocols for voting for current pools
    function removeWhitelistForPartner(
        uint256 _tokenID,
        address[] calldata _whitelistedPairs
    ) external operatorGated {
        for (uint256 i = 0; i < _whitelistedPairs.length; ++i) {
            if (
                _partnerAllowedToVote[_tokenID].contains(_whitelistedPairs[i])
            ) {
                _partnerAllowedToVote[_tokenID].remove(_whitelistedPairs[i]);
            }
        }

        emit PairsRemovedForPartner(_tokenID, _whitelistedPairs);
    }

    ///@notice removes the veNFT from the protocol
    function revoke(uint256 _tokenID) external operatorGated {
        voter.reset(_tokenID);
        ve.transferFrom(address(this), multisig, _tokenID);

        _tokensOwned[__ownerOf[_tokenID]].remove(_tokenID);
        delete __ownerOf[_tokenID];
        delete __partner[_tokenID];

        emit TokenRevoked(_tokenID);
    }

    ///@notice allow the designated protocol to vote using their partner NFT
    function voteForProtocolPools(
        address[] calldata _pools,
        uint256[] calldata _weights,
        uint256 _tokenID
    ) external {
        require(
            msg.sender == __ownerOf[_tokenID] || msg.sender == address(this),
            "!protocol"
        );
        require(_pools.length == _weights.length, "length mismatch");
        //TODO: Add a check to ensure protocols cannot change their votes 1 hour before epoch flip
        for (uint256 i = 0; i < _pools.length; ++i) {
            require(
                _allowedToVote.contains(_pools[i]) ||
                    _partnerAllowedToVote[_tokenID].contains(_pools[i]),
                "not allowed"
            );
        }
        voter.vote(_tokenID, _pools, _weights);
    }

    ///@notice claim rewards for current partner
    function claimVoterRewards(
        address[] calldata _feedists,
        address[][] calldata _tokens,
        uint256 _tokenId
    ) external {
        address _owner = __ownerOf[_tokenId];
        voter.claimFees(_feedists, _tokens, _tokenId);

        uint256[][] memory values = new uint256[][](_feedists.length);
        for (uint256 i = 0; i < _feedists.length; ++i) {
            values[i] = new uint256[](_tokens[i].length);
            for (uint256 j = 0; j < _tokens[i].length; ++j) {
                IERC20 temp = IERC20(_tokens[i][j]);
                values[i][j] = temp.balanceOf(address(this));
                if (values[i][j] > 0) {
                    temp.safeTransfer(_owner, values[i][j]);
                }
            }
        }

        emit RewardClaimed(
            _tokenId,
            _owner,
            _owner,
            _feedists,
            _tokens,
            values
        );
    }

    ///@notice elevated version
    function elevatedClaimVoterRewards(
        address[] calldata _feedists,
        address[][] calldata _tokens,
        uint256 _tokenId
    ) external operatorGated {
        voter.claimFees(_feedists, _tokens, _tokenId);

        uint256[][] memory values = new uint256[][](_feedists.length);
        for (uint256 i = 0; i < _feedists.length; ++i) {
            values[i] = new uint256[](_tokens[i].length);
            for (uint256 j = 0; j < _tokens[i].length; ++j) {
                IERC20 temp = IERC20(_tokens[i][j]);
                values[i][j] = temp.balanceOf(address(this));
                if (values[i][j] > 0) {
                    temp.safeTransfer(multisig, values[i][j]);
                }
            }
        }

        emit RewardClaimed(
            _tokenId,
            __ownerOf[_tokenId],
            multisig,
            _feedists,
            _tokens,
            values
        );
    }

    ///@dev permissionless
    function poke(uint256[] calldata _tokenIDs) public {
        address[] memory lastVotes;
        uint256[] memory lastWeights;
        address ownerOf;

        for (uint256 i = 0; i < _tokenIDs.length; ++i) {
            (ownerOf, , , , lastVotes, lastWeights) = getTokenInfo(
                _tokenIDs[i]
            );
            if (
                ownerOf != address(0) &&
                voter.lastVoted(_tokenIDs[i]) < voter._epochTimestamp() + 1
            ) {
                voter.poke(_tokenIDs[i]);
                emit Voted(_tokenIDs[i], ownerOf, lastVotes, lastWeights);
            }
        }
    }

    ///@dev permissionless
    function claimRebases(uint256[] calldata _tokenIDs) public {
        veDist.claim_many(_tokenIDs);

        emit Rebased(_tokenIDs);
    }

    ///@dev permissionless
    function extend(uint256[] calldata _tokenIDs) public {
        for (uint256 i = 0; i < _tokenIDs.length; ++i) {
            ve.increase_unlock_time(_tokenIDs[i], MAX);
        }

        emit LockupIncreased(_tokenIDs);
    }

    ///@dev permissionless maintenance to be called weekly
    function maintenance(uint256[] calldata _tokenIDs) public {
        claimRebases(_tokenIDs);
        extend(_tokenIDs);
        poke(_tokenIDs);
    }

    ///@notice backstop
    function execute(address _x, bytes calldata _data) external operatorGated {
        (bool success, ) = _x.call(_data);
        require(success);
    }

    // view methods

    function getAddressInfo(
        address account
    )
        external
        view
        returns (
            uint256[] memory tokenIDs,
            address[] memory allowedToVote,
            string[] memory partnerNames,
            address[][] memory personalAllowedToVote,
            address[][] memory lastVotes,
            uint256[][] memory lastWeights
        )
    {
        tokenIDs = _tokensOwned[account].values();
        allowedToVote = _allowedToVote.values();
        partnerNames = new string[](tokenIDs.length);
        personalAllowedToVote = new address[][](tokenIDs.length);
        lastVotes = new address[][](tokenIDs.length);
        lastWeights = new uint256[][](tokenIDs.length);

        for (uint256 i; i < tokenIDs.length; ++i) {
            (
                ,
                partnerNames[i],
                ,
                personalAllowedToVote[i],
                lastVotes[i],
                lastWeights[i]
            ) = getTokenInfo(tokenIDs[i]);
        }
    }

    function getTokensInfo(
        uint256[] calldata tokenIDs
    )
        external
        view
        returns (
            address[] memory ownersOf,
            address[] memory allowedToVote,
            string[] memory partnerNames,
            address[][] memory personalAllowedToVote,
            address[][] memory lastVotes,
            uint256[][] memory lastWeights
        )
    {
        allowedToVote = _allowedToVote.values();
        partnerNames = new string[](tokenIDs.length);
        ownersOf = new address[](tokenIDs.length);
        personalAllowedToVote = new address[][](tokenIDs.length);
        lastVotes = new address[][](tokenIDs.length);
        lastWeights = new uint256[][](tokenIDs.length);

        for (uint256 i; i < tokenIDs.length; ++i) {
            (
                ownersOf[i],
                partnerNames[i],
                ,
                personalAllowedToVote[i],
                lastVotes[i],
                lastWeights[i]
            ) = getTokenInfo(tokenIDs[i]);
        }
    }

    function getTokenInfo(
        uint256 tokenID
    )
        public
        view
        returns (
            address ownerOf,
            string memory partnerName,
            address[] memory allowedToVote,
            address[] memory personalAllowedToVote,
            address[] memory lastVotes,
            uint256[] memory lastWeights
        )
    {
        ownerOf = __ownerOf[tokenID];
        partnerName = __partner[tokenID];
        allowedToVote = _allowedToVote.values();
        personalAllowedToVote = _partnerAllowedToVote[tokenID].values();
        uint256 len = voter.poolVoteLength(tokenID);
        lastVotes = new address[](len);
        lastWeights = new uint256[](len);
        for (uint256 i = 0; i < lastVotes.length; ++i) {
            lastVotes[i] = voter.poolVote(tokenID, i);
            lastWeights[i] = voter.votes(tokenID, lastVotes[i]);
        }
    }
}
