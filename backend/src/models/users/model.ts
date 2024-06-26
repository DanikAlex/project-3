import DTO from './dto';

export default interface Model {
    getAll(): Promise<DTO[]>;
    getOne(userId: string): Promise<DTO>;
}