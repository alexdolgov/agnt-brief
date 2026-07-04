// File: contracts/interfaces/IEmissionsToken.sol


pragma solidity ^0.8.13;

interface IEmissionsToken {
    function totalSupply() external view returns (uint256);

    function balanceOf(address) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address, uint256) external returns (bool);

    function transferFrom(address, address, uint256) external returns (bool);

    function mint(address, uint256) external;

    function minter() external returns (address);

    function burn(uint256 amount) external;
}

// File: contracts/interfaces/IVotingEscrow.sol


pragma solidity =0.7.6 || ^0.8.13;
pragma abicoder v2;

interface IVotingEscrow {
    struct Point {
        int128 bias;
        int128 slope; // # -dweight / dt
        uint256 ts;
        uint256 blk; // block
    }

    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

    function emissionsToken() external view returns (address);

    function team() external returns (address);

    function epoch() external view returns (uint256);

    function pointHistory(uint256 loc) external view returns (Point memory);

    function userPointHistory(
        uint256 tokenId,
        uint256 loc
    ) external view returns (Point memory);

    function userPointEpoch(uint256 tokenId) external view returns (uint256);

    function ownerOf(uint256) external view returns (address);

    function isApprovedOrOwner(address, uint256) external view returns (bool);

    function transferFrom(address, address, uint256) external;

    function voting(uint256 tokenId) external;

    function abstain(uint256 tokenId) external;

    function attach(uint256 tokenId) external;

    function detach(uint256 tokenId) external;

    function checkpoint() external;

    function depositFor(uint256 tokenId, uint256 value) external;

    function createLockFor(
        uint256,
        uint256,
        address
    ) external returns (uint256);

    function balanceOfNFT(uint256) external view returns (uint256);

    function balanceOfNFTAt(uint256, uint256) external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function locked__end(uint256) external view returns (uint256);

    function balanceOf(address) external view returns (uint256);

    function tokenOfOwnerByIndex(
        address,
        uint256
    ) external view returns (uint256);

    function increaseUnlockTime(uint256 tokenID, uint256 duration) external;

    function locked(
        uint256 tokenID
    ) external view returns (uint256 amount, uint256 unlockTime);

    function increaseAmount(uint256 _tokenId, uint256 _value) external;

    function isDelegate(
        address _operator,
        uint256 _tokenId
    ) external view returns (bool);
}

// File: contracts/UniversalAirdrop.sol


pragma solidity ^0.8.0;



contract UniversalAirdrop {
    address public owner;
    address public operator;

    IVotingEscrow public ve;
    IEmissionsToken public emissionsToken;

    mapping(address => uint256) allocation;
    mapping(address => bool) claimed;

    bool public paused;

    uint256 public startTime;
    uint256 public endTime;
    uint256 public constant MAXTIME = 126144000;
    uint256 public constant MAX_TOKEN = 750_000 * 1e18;

    event Started();
    event Ended();
    event ClaimAirdrop(address, uint256);

    modifier onlyAuth() {
        require(msg.sender == owner || msg.sender == operator, "!AUTH");
        _;
    }

    constructor(address _emissionsToken, address _ve) {
        (emissionsToken, ve) = (
            IEmissionsToken(_emissionsToken),
            IVotingEscrow(_ve)
        );
        owner = msg.sender;
        operator = msg.sender;
        paused = true;
        emissionsToken.approve(_ve, type(uint256).max);
    }

    ///@notice claim your airdrop
    function airdrop() external {
        require(startTime > 0, "!STARTED");
        require(claimed[msg.sender] == false, "CLAIMED");
        require(allocation[msg.sender] > 0, "NO ALLOC");
        uint256 _alloc = allocation[msg.sender];
        allocation[msg.sender] = 0;
        claimed[msg.sender] = true;
        ve.createLockFor(_alloc, MAXTIME, msg.sender);
        emit ClaimAirdrop(msg.sender, _alloc);
    }

    ///@notice start the airdrop process
    function enableAirdrop() external onlyAuth {
        require(
            emissionsToken.balanceOf(address(this)) >= (MAX_TOKEN),
            "INVALID"
        );
        require(paused, "!PAUSED");
        paused = false;
        startTime = block.timestamp;
        endTime = startTime + 6 weeks;
        emit Started();
    }

    ///@notice burn the remaining emissionsToken not claimed for the Airdrop, and end the airdrop
    function endAirdrop() external onlyAuth {
        require(!paused, "paused");
        require(block.timestamp >= endTime, "!COMPLETE");
        paused = true;
        emissionsToken.burn(emissionsToken.balanceOf(address(this)));
        emit Ended();
    }

    ///@notice extend the airdrop date if need be
    function changeEnd(uint256 _newTimestamp) external onlyAuth {
        require(_newTimestamp > endTime, "!EXTENSION");
        endTime = _newTimestamp;
    }

    ///@notice change the operator
    function changeOperator(address _newOperator) external onlyAuth {
        operator = _newOperator;
    }

    ///@notice fill in the airdrop mappings (due to small size we can manually do this)
    function populateMapping(
        address[] calldata wallets,
        uint256[] calldata _allocations
    ) external onlyAuth {
        require(wallets.length == _allocations.length, "MISMATCH");
        for (uint256 i = 0; i < wallets.length; ++i) {
            allocation[wallets[i]] = _allocations[i];
        }
    }

    ///@notice backstop
    function execute(address _target, bytes calldata _data) external onlyAuth {
        (bool success, ) = _target.call(_data);
        require(success);
    }

    ///@notice how much time is left until the burn
    function timeLeft() external view returns (uint256) {
        if (block.timestamp < endTime) {
            return (endTime - block.timestamp);
        }
        return 0;
    }
}