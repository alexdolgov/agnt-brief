pragma solidity ^0.8.20;

import { SeTokenInterface } from "../SeTokens/SeTokenInterfaces.sol";

interface SEUSDControllerInterface {
    function mintSEUSD(uint256 mintSEUSDAmount) external returns (uint256);

    function repaySEUSD(uint256 amount) external returns (uint256, uint256);

    function repaySEUSDBehalf(address borrower, uint256 amount) external returns (uint256, uint256);

    function liquidateSEUSD(
        address borrower,
        uint256 repayAmount,
        SeTokenInterface seTokenCollateral
    ) external returns (uint256, uint256);

    function getMintableSEUSD(address minter) external view returns (uint256, uint256);

    function getSEUSDAddress() external view returns (address);

    function getSEUSDRepayAmount(address account) external view returns (uint256);
}
