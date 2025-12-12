import axios, { type AxiosInstance } from "axios";

export class BaseService{
    private static axiosInstance : AxiosInstance

    protected axios = (): AxiosInstance =>{
        if(BaseService.axiosInstance == null){
            BaseService.axiosInstance = axios.create({
                baseURL: import.meta.env.VITE_API_URL
            })
        }
        return BaseService.axiosInstance
    }

}