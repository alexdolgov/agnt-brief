// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

contract VoteWeightRegistry {

struct Vote {
    // User address
    address user;

    // Gauge address
    address[] gauges;

    // Weight to allocate - 0 to 100
    uint256[] weights;

    bool killed;
}

    mapping(string => mapping(uint256 => Vote)) public votes;

    // Index start to one
    mapping(string => uint256) public space_votes_index;
    mapping(address => mapping(string => uint256)) public user_vote_index;
    
    function set(string calldata space, address[] calldata _gauges, uint256[] calldata _weights) external {
        uint256 weightLength = _weights.length;

        require(_gauges.length == weightLength, "!Length");

        uint256 sum = 0;
        uint256 i = 0;
        
        for(;i<weightLength;) {
            sum += _weights[i];
            
            unchecked {
                ++i;
            }
        }

        require(sum == 10000, "Wrong weight");

        uint256 userVoteIndex = user_vote_index[msg.sender][space];
        if(userVoteIndex == 0) {
            // New vote
            uint256 currentIndex = space_votes_index[space];
            userVoteIndex = currentIndex + 1;

            space_votes_index[space] = userVoteIndex;
            user_vote_index[msg.sender][space] = userVoteIndex;
        }

        votes[space][userVoteIndex] = Vote({
            user: msg.sender,
            gauges: _gauges,
            weights: _weights,
            killed: false
        });
    }

    function remove(string calldata space) public {
        uint256 index = user_vote_index[msg.sender][space];
        require(index > 0, "No vote");
        

        votes[space][index].killed = true;
    }

    function removeAll(string[] calldata spaces) public {
        for(uint256 i = 0; i < spaces.length; ++i) {
            remove(spaces[i]);
        }
    }


    function get(address user, string calldata space) external view returns(Vote memory) {
        uint256 index = user_vote_index[user][space];
        return votes[space][index];
    }
}
