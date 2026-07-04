pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//ERC20 token
interface IDN404 is IERC20 {

  function mirrorERC721() external view returns (address);
}