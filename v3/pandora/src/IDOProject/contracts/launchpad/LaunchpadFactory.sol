//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Create2.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./IDOProjectFactory.sol";
import "./INOProjectFactory.sol";

contract LaunchpadFactory is Ownable {

    mapping(uint => address) public projects;
    mapping(uint => address) public nftProjects;
    mapping(address => bool) public operators;
    IDOProjectFactory public idoFactory;
    INOProjectFactory public inoFactory;

    modifier onlyOperator() {
        require(operators[msg.sender], "LaunchpadFactory: only operator");
        _;
    }
    event IDOProjectCreated(uint indexed projectId, address indexed contractAddress);
    event INOProjectCreated(uint indexed projectId, address indexed contractAddress);
    event ChangeOperator(address indexed _newOperator, bool indexed _status);

    constructor() {
        operators[msg.sender] = true;
    }

    function setFactory(IDOProjectFactory _idoFactory, INOProjectFactory _inoFactory) external onlyOwner {
        require(address(_idoFactory) != address(0), "LaunchpadFactory: input zero _idoFactory");
        require(address(_inoFactory) != address(0), "LaunchpadFactory: input zero _inoFactory");
        idoFactory = _idoFactory;
        inoFactory = _inoFactory;
    }

    function setOperator(address _newOperator, bool _status) external onlyOwner {
        require(_newOperator != address(0), "LaunchpadFactory: input zero");
        operators[_newOperator] = _status;
        emit ChangeOperator(_newOperator, _status);
    }

    function createIDO(uint _projectId, address _operator, address _userLevel) external onlyOperator {
        require(_operator != address(0), "LaunchpadFactory: !zero");
        require(projects[_projectId] == address(0), "LaunchpadFactory: Duplicate project id");
        address _projectAddress = idoFactory.createProject(_projectId, _operator, _userLevel, address(this));
        projects[_projectId] = _projectAddress;
        emit IDOProjectCreated(_projectId, _projectAddress);
    }

    function createINO(
        uint _projectId,
        address _userLevel,
        address _operator
    ) external onlyOperator {
        require(_operator != address(0), "LaunchpadFactory: !zero");
        require(nftProjects[_projectId] == address(0), "LaunchpadFactory: Already deployed nftproject with id");
        address inoAddress = inoFactory.createINO(_projectId, _operator, _userLevel, address(this));
        nftProjects[_projectId] = inoAddress;
        emit INOProjectCreated(_projectId, inoAddress);
    }

    receive() external payable {
        revert("Nothing send to here");
    }
}
