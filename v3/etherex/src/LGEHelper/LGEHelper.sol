// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transfer(address _to, uint256 _amount) external;

    function transferFrom(
        address _from,
        address _to,
        uint256 _amount
    ) external;

    function approve(address _spender, uint256 _amount) external;

    function balanceOf(address _user) external view returns (uint256);
}

interface IVe {
    function createLockFor(
        uint256 _amount,
        uint256 _locktime,
        address _to
    ) external;
}

interface ILGE {
    function getExpectedClaimAmount(address _user)
        external
        view
        returns (uint256);

    function hasEnded() external view returns (bool);
}

contract LGEHelper {
    address public owner;
    address public multisig = 0x44376f8F52407ed66E6D3356535410A7DCd4652B;
    IERC20 public NILE = IERC20(0xAAAac83751090C6ea42379626435f805DDF54DC8);
    IVe public veNILE = IVe(0xAAAEa1fB9f3DE3F70E89f37B69Ab11B47eb9Ce6F);
    ILGE public lge = ILGE(0x5B93eb4C26D30688f1BD6Eb6A9B3dA3540d5a605);

    uint256 private constant MULT = 500;
    uint256 private constant BASIS = 100;
    uint256 private constant MAXTIME = 126144000;

    mapping(address => bool) claimed;

    constructor() {
        owner = msg.sender;
        NILE.approve(address(veNILE), type(uint256).max);
    }

    modifier ended() {
        require(lge.hasEnded(), "!ENDED");
        _;
    }

    ///@notice claim LGE allocation
    function claim(bool _bonus) external ended {
        require(!claimed[msg.sender], "Claimed");
        uint256 _allocated = ((lge.getExpectedClaimAmount(msg.sender) * MULT) /
            BASIS);
        require(_allocated > 0, "No Allocation");
        claimed[msg.sender] = true;
        if (_bonus) {
            _allocated = ((_allocated * 150) / BASIS);
            NILE.transferFrom(
                multisig,
                address(this),
                ((_allocated * 50) / 150)
            );
            veNILE.createLockFor(_allocated, MAXTIME, msg.sender);
        } else {
            _allocated = ((_allocated * 50) / BASIS);
            NILE.transfer(msg.sender, _allocated);
            veNILE.createLockFor(_allocated, MAXTIME, msg.sender);
        }
    }

    ///@notice permissioned forceClaim if there is too many tokens in the contract
    function forceClaim(uint256 _amount) external {
        require(owner == msg.sender, "!owner");
        if (NILE.balanceOf(address(this)) <= _amount) {
            NILE.transfer(owner, NILE.balanceOf(address(this)));
        } else {
            NILE.transfer(owner, _amount);
        }
    }
}