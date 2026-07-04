// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interface/ISecHubFactory.sol";
import "./SecHub.sol";

contract SecHubFactory is Ownable, ISecHubFactory {
    mapping(address => address) public user2SecHub;
    mapping(address => address) public secHub2User;

    event SecHubCreated(address indexed owner, address secHub);
    event SecHubTransferred(address secHub, address from, address to);
    event RouterChanged(address previousRouter, address newRouter);

    address public router;
    bool public allowTransfer;

    constructor() Ownable(_msgSender()) {}

    function setRouter(address routerAddr) external onlyOwner {
        require(routerAddr != address(0), "Not address(0)");
        emit RouterChanged(router, routerAddr);
        router = routerAddr;
    }

    function openTransfer(bool canTransfer) external onlyOwner {
        allowTransfer = canTransfer;
    }


    function createSecHub(address to) public override returns (address) {
        require(user2SecHub[to] == address(0), "Already created");

        SecHub newSecHub = new SecHub(to, address(this));
        user2SecHub[to] = address(newSecHub);
        secHub2User[address(newSecHub)] = to;

        emit SecHubCreated(to, address(newSecHub));
        return address(newSecHub);
    }

    function getSecHub(address user) public view override returns (address) {
        return user2SecHub[user];
    }

    function getSecHubOwner(address secHub) public view returns (address) {
        return secHub2User[secHub];
    }

    function transferSecHub(
        address to
    ) external {
        require(allowTransfer, "Not Allowed");
        require(user2SecHub[to] == address(0), "Receiver already have SecHub");
        address from = _msgSender();
        address secHub = user2SecHub[from];
        require(secHub != address(0), "Not Created");
        require(from != to, "Same user");
        delete user2SecHub[from];
        user2SecHub[to] = secHub;
        secHub2User[secHub] = to;
        emit SecHubTransferred(secHub, from, to);
        ISecHub(secHub).onTransferred(to);
    }
}
