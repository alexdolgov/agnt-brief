// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.13;

import "../libraries/Math.sol";
import "../interfaces/IERC20.sol";
import "../interfaces/IRewardsDistributor.sol";
import {IVotingEscrowV2} from "./VotingEscrow/interfaces/IVotingEscrowV2.sol";
import {Checkpoints} from "./VotingEscrow/libraries/Checkpoints.sol";
import "../Constants.sol";

/*

@title RewardsDistributor for ve(3,3) emissions
@author RewardsDistributor V2 ApeGuru
@author RewardsDistributor V1 Curve Finance, andrecronje
@license MIT

*/

contract RewardsDistributorV2 is IRewardsDistributor {
    event CheckpointToken(uint time, uint tokens);

    event Claimed(uint tokenId, uint amount, uint claim_epoch, uint max_epoch);

    uint WEEK = Constants.EPOCH;

    uint public start_time;
    uint public time_cursor;
    mapping(uint => uint) public time_cursor_of;

    uint public last_token_time;
    uint[1000000000000000] public tokens_per_week;
    uint public token_last_balance;

    address public owner;
    address public voting_escrow;
    address public token;
    address public depositor;

    constructor(address _voting_escrow) {
        uint _t = (block.timestamp / WEEK) * WEEK;
        start_time = _t;
        last_token_time = _t;
        time_cursor = _t;
        address _token = address(IVotingEscrowV2(_voting_escrow).token());
        token = _token;
        voting_escrow = _voting_escrow;
        depositor = msg.sender;
        owner = msg.sender;
        require(IERC20(_token).approve(_voting_escrow, type(uint).max));
    }

    function timestamp() public view returns (uint) {
        return (block.timestamp / WEEK) * WEEK;
    }

    function _checkpoint_token() internal {
        uint token_balance = IERC20(token).balanceOf(address(this));
        uint to_distribute = token_balance - token_last_balance;
        token_last_balance = token_balance;

        if (last_token_time == 0) {
            last_token_time = timestamp();
            start_time = last_token_time;
        }
        uint t = last_token_time;
        uint since_last = block.timestamp - t;
        last_token_time = block.timestamp;
        uint this_week = (t / WEEK) * WEEK;
        uint next_week = 0;

        for (uint i = 0; i < 20; i++) {
            next_week = this_week + WEEK;
            if (block.timestamp < next_week) {
                if (since_last == 0 && block.timestamp == t) {
                    tokens_per_week[this_week] += to_distribute;
                } else {
                    tokens_per_week[this_week] += (to_distribute * (block.timestamp - t)) / since_last;
                }
                break;
            } else {
                if (since_last == 0 && next_week == t) {
                    tokens_per_week[this_week] += to_distribute;
                } else {
                    tokens_per_week[this_week] += (to_distribute * (next_week - t)) / since_last;
                }
            }
            t = next_week;
            this_week = next_week;
        }
        emit CheckpointToken(block.timestamp, to_distribute);
    }

    function checkpoint_token() external {
        assert(msg.sender == depositor);
        _checkpoint_token();
    }

    function _checkpoint_total_supply() internal {
        IVotingEscrowV2(voting_escrow).checkpoint();
        if (block.timestamp >= time_cursor) time_cursor = timestamp() + WEEK;
    }

    function checkpoint_total_supply() external {
        _checkpoint_total_supply();
    }

    function _claim(uint _tokenId, address ve, uint _last_token_time) internal returns (uint) {
        uint to_distribute = 0;

        (, uint48 maxTs) = IVotingEscrowV2(ve).getPastEscrowPoint(_tokenId, block.timestamp);
        uint _start_time = start_time;

        if (maxTs == 0) return 0;

        uint week_cursor = time_cursor_of[_tokenId];

        if (week_cursor == 0) {
            (, uint48 ts) = IVotingEscrowV2(ve).getFirstEscrowPoint(_tokenId);
            week_cursor = ((ts + WEEK - 1) / WEEK) * WEEK;
        }
        if (week_cursor >= last_token_time) return 0;
        if (week_cursor < _start_time) week_cursor = _start_time;

        for (uint i = 0; i < 50; i++) {
            if (week_cursor >= _last_token_time) break;
            uint256 balance_of = IVotingEscrowV2(ve).balanceOfNFTAt(_tokenId, week_cursor);
            if (balance_of == 0) break;
            if (balance_of != 0) {
                /// @note potential brick if supply returns 0
                to_distribute +=
                    (balance_of * tokens_per_week[week_cursor]) /
                    IVotingEscrowV2(ve).getPastTotalSupply(week_cursor);
            }
            week_cursor += WEEK;
        }

        time_cursor_of[_tokenId] = week_cursor;

        emit Claimed(_tokenId, to_distribute, week_cursor, maxTs);

        return to_distribute;
    }

    function _claimable(uint _tokenId, address ve, uint _last_token_time) internal view returns (uint) {
        uint to_distribute = 0;

        uint _start_time = start_time;

        uint week_cursor = time_cursor_of[_tokenId];

        if (week_cursor == 0) {
            (, uint48 ts) = IVotingEscrowV2(ve).getFirstEscrowPoint(_tokenId);
            if (ts == 0) return 0;
            week_cursor = ((ts + WEEK - 1) / WEEK) * WEEK;
        }

        if (week_cursor >= last_token_time) return 0;
        if (week_cursor < _start_time) week_cursor = _start_time;

        for (uint i = 0; i < 50; i++) {
            if (week_cursor >= _last_token_time) break;
            uint256 balance_of = IVotingEscrowV2(ve).balanceOfNFTAt(_tokenId, week_cursor);
            if (balance_of == 0) break;
            if (balance_of != 0) {
                /// @note potential brick if supply returns 0
                to_distribute +=
                    (balance_of * tokens_per_week[week_cursor]) /
                    uint256(int256(IVotingEscrowV2(ve).getPastTotalSupply(week_cursor)));
            }
            week_cursor += WEEK;
        }

        return to_distribute;
    }

    function claimable(uint _tokenId) external view returns (uint) {
        uint _last_token_time = (last_token_time / WEEK) * WEEK;
        return _claimable(_tokenId, voting_escrow, _last_token_time);
    }

    function claim(uint _tokenId) external returns (uint) {
        if (block.timestamp >= time_cursor) _checkpoint_total_supply();
        uint _last_token_time = last_token_time;
        _last_token_time = (_last_token_time / WEEK) * WEEK;
        uint amount = _claim(_tokenId, voting_escrow, _last_token_time);
        if (amount != 0) {
            // if locked.end then send directly
            IVotingEscrowV2.LockDetails memory _locked = IVotingEscrowV2(voting_escrow).lockDetails(_tokenId);
            if (_locked.endTime < block.timestamp && !_locked.isPermanent) {
                address _nftOwner = IVotingEscrowV2(voting_escrow).ownerOf(_tokenId);
                IERC20(token).transfer(_nftOwner, amount);
            } else {
                IVotingEscrowV2(voting_escrow).increaseAmount(_tokenId, amount);
            }
            token_last_balance -= amount;
        }
        return amount;
    }

    function claim_many(uint[] memory _tokenIds) external returns (bool) {
        if (block.timestamp >= time_cursor) _checkpoint_total_supply();
        uint _last_token_time = last_token_time;
        _last_token_time = (_last_token_time / WEEK) * WEEK;
        address _voting_escrow = voting_escrow;
        uint total = 0;

        for (uint i = 0; i < _tokenIds.length; i++) {
            uint _tokenId = _tokenIds[i];
            if (_tokenId == 0) break;
            uint amount = _claim(_tokenId, _voting_escrow, _last_token_time);
            if (amount != 0) {
                // if locked.end then send directly
                IVotingEscrowV2.LockDetails memory _locked = IVotingEscrowV2(_voting_escrow).lockDetails(_tokenId);
                if (_locked.endTime < block.timestamp && !_locked.isPermanent) {
                    address _nftOwner = IVotingEscrowV2(_voting_escrow).ownerOf(_tokenId);
                    IERC20(token).transfer(_nftOwner, amount);
                } else {
                    IVotingEscrowV2(_voting_escrow).increaseAmount(_tokenId, amount);
                }
                total += amount;
            }
        }
        if (total != 0) {
            token_last_balance -= total;
        }

        return true;
    }

    function setDepositor(address _depositor) external {
        require(msg.sender == owner);
        depositor = _depositor;
    }

    function setOwner(address _owner) external {
        require(msg.sender == owner);
        owner = _owner;
    }

    function withdrawERC20(address _token) external {
        require(msg.sender == owner);
        require(_token != address(0));
        uint256 _balance = IERC20(_token).balanceOf(address(this));
        IERC20(_token).transfer(msg.sender, _balance);
    }
}
